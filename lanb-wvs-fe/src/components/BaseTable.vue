<template>
  <div>
    <div class="modal" v-if="isModal">
      <div class="modal__inner panel">
        <h1>编辑表单</h1>
        <form class="form">
          <template v-for="(field, index) in fields">
            <div v-if="!field.hidden" :key="index" class="form__block">
              <label class="input-label" :for="field.field">{{field.name}}:</label>
              <input class="input" v-model="editForm[field.field]" :placeholder="field.name">
            </div>
          </template>

          <div class="button-group">
            <a href="#" @click="postForm" class="button">确定</a>
            <a href="#" @click="isModal = false" class="button">取消</a>
          </div>
        </form>
      </div>
      <div class="mask" @click="isModal = false"></div>
    </div>

    <div class="panel">
      <form class="form">
        <template v-for="(field, index) in fields">
          <input v-if="!field.hidden" :key="index" class="input" v-model="form[field.field]" :placeholder="field.name">
        </template>
        <a href="#" @click="search" class="button">查询</a>
        <a href="#" @click="formReset" class="button">重置</a>
      </form>
    </div>

    <div class="panel">
      <div class="tool-bar">
        <a href="#" @click="saveHandle" class="button">新增</a>
        <a href="#" @click="deleteHandle" class="button">删除</a>
        <a href="#" @click="updateHandle" class="button">修改</a>
      </div>

      <table class="table">
        <thead>
          <tr>
            <th v-if="checkbox.show">
              <input
                v-model="checkbox.checked"
                @click="selectToggle"
                class="checkbox"
                type="checkbox"
              >
            </th>
            <template v-for="(field, index) in fields">
              <th v-if="!field.hidden" :key="index">{{field.name}}</th>
            </template>
          </tr>
        </thead>

        <tbody>
          <tr :key="index" v-for="(row, index) in rows">
            <td v-if="checkbox.show">
              <input v-model="row.checked" class="checkbox" type="checkbox">
            </td>
            <template v-for="(field, fieldIndex) in fields">
              <td v-if="!field.hidden" :key="fieldIndex">{{row[field.field]}}</td>
            </template>
          </tr>
        </tbody>
      </table>

      <div class="pagination">
        <a href="#" @click="pageChange(-1)" class="button">上一页</a>
        <input type="text" v-model="pageInfo.page" class="input" value="1">
        <a href="#" @click="pageChange(1)" class="button">下一页</a>

        <div class="rows">
          <label for="rows">每页</label>
          <input type="text" class="input" placeholder v-model="pageInfo.rows" @change="getList">
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import axios from 'axios'

export default {

  name: 'baseTable',

  props: {
    fields: {
      type: Array,
      default: () => [{
        field: 'testId',
        name: '测试ID'
      }, {
        field: 'testName',
        name: '测试名'

      }, {
        field: 'createTime',
        name: '创建时间'
      }]
    },
    baseURL: {
      type: String,
      default: '/api/test'
    }
  },

  data () {
    return {
      rows: [],
      pageInfo: {
        page: 1,
        rows: 10
      },
      total: 0,
      isModal: false,
      checkbox: {
        checked: false,
        show: true
      },
      action: 'save',
      editForm: null,
      form: null
    }
  },

  computed: {
    maxPage () {
      return parseInt(this.total / this.pageInfo.rows)
    }
  },

  methods: {

    postForm () {
      console.log('postForm')
      const tmpParam = this.editForm
      delete tmpParam.checked
      axios
        .post(this.baseURL + '/' + this.action, tmpParam)
        .then(response => {
          const data = response.data
          if (data.success) {
            this.isModal = false
            this.getList()
          } else {
            alert(response.data.msg)
          }
        })
        .catch(error => alert(error))
    },

    formReset () {
      this.initSearchForm()
      this.search()
    },

    selectToggle () {
      for (let i = 0; i < this.rows.length; i++) {
        const row = this.rows[i]
        row.checked = !this.checkbox.checked
      }
    },

    // 取被选中的行数据
    getSelectedRows () {
      const tmpList = []
      for (let i = 0; i < this.rows.length; i++) {
        const row = this.rows[i]
        if (row.checked) {
          tmpList.push(row)
        }
      }
      return tmpList
    },

    saveHandle () {
      this.initEditForm()
      this.isModal = true
      this.action = 'save'
    },

    deleteHandle () {
      const rows = this.getSelectedRows()
      if (rows.length !== 1) {
        alert('请选择一行数据!')
        return
      }
      const row = rows[0]
      delete row.checked
      axios
        .post(this.baseURL + '/delete', row)
        .then(response => {
          const data = response.data
          if (data.success) {
            this.getList()
          } else {
            alert(response.data.msg)
          }
        })
        .catch(error => alert(error))
      console.log(rows)
    },

    updateHandle () {
      const rows = this.getSelectedRows()
      if (rows.length !== 1) {
        alert('请选中一行数据!')
        return
      }
      this.editForm = rows[0]
      this.isModal = true
      this.action = 'update'
    },

    // 初始化checkbox
    initCheckbox () {
      for (let i = 0; i < this.rows.length; i++) {
        const row = this.rows[i]
        row.checked = false
      }
    },

    search () {
      this.pageInfo.page = 1
      this.getList()
    },

    getList () {
      const tmpParam = this.form
      tmpParam.page = this.pageInfo

      axios
        .post(this.baseURL + '/queryPage', tmpParam)
        .then(response => {
          this.rows = response.data.rows
          this.total = response.data.total
          this.initCheckbox()
        })
        .catch(error => alert(error))
    },
    pageChange (num) {
      if (this.pageInfo.page + num > this.maxPage) {
        return
      }
      if (this.pageInfo.page + num <= 0) {
        return
      }
      this.pageInfo.page += num
      this.checkbox.checked = false
      this.getList()
    },

    initEditForm () {
      const tmpForm = {}
      for (let index = 0; index < this.fields.length; index++) {
        const field = this.fields[index]
        tmpForm[field.field] = ''
      }
      this.editForm = tmpForm

      console.log(this.editForm)
    },

    initSearchForm () {
      const tmpForm = {}
      for (let index = 0; index < this.fields.length; index++) {
        const field = this.fields[index]
        tmpForm[field.field] = ''
      }
      this.form = tmpForm
    }
  },

  created () {
    this.initEditForm()
    this.initSearchForm()
  },

  mounted () {
    this.getList()
  }
}

</script>
<style scoped>
.modal__inner {
  padding: 30px;
  padding-bottom: 50px !important;
}

.form .input {
  margin-top: 8px;
  margin-right: 8px;
}

.form .button-group {
  position: absolute;
  right: 8px;
  bottom: 8px;
}

.pagination .rows {
  float: right;
}
</style>
