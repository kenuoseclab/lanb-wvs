<template>
  <div>
    <div class="modal" v-if="isModal">
      <div class="modal__inner panel">
        <h1>编辑表单</h1>
        <form class="form">
          <div class="form__block">
            <label class="input-label" for="testId">测试ID:</label>
            <input class="input" v-model="editForm.testId" placeholder="测试ID">
          </div>

          <div class="form__block">
            <label class="input-label" for="testName">测试名:</label>
            <input class="input" v-model="editForm.testName" placeholder="测试名">
          </div>

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
        <input class="input" v-model="form.testName" placeholder="测试名">
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

      <table id="table" class="table">
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
            <th :key="index" v-for="(field, index) in fields">{{field.name}}</th>
          </tr>
        </thead>

        <tbody>
          <tr :key="index" v-for="(row, index) in rows">
            <td v-if="checkbox.show">
              <input v-model="row.checked" class="checkbox" type="checkbox">
            </td>
            <template v-for="(field, fieldIndex) in fields">
              <td :key="fieldIndex">{{row[field.field]}}</td>
            </template>
          </tr>
        </tbody>
      </table>

      <div class="pagination">
        <a href="#" @click="pageChange(-1)" class="button">上一页</a>
        <input type="text" v-model="pageInfo.page" class="input" value="1">
        <a href="#" @click="pageChange(1)" class="button">下一页</a>
      </div>
    </div>
  </div>
</template>

<script>
import axios from 'axios'

const fields = [{
  field: 'testId',
  name: '测试ID'
}, {
  field: 'testName',
  name: '测试名'
}, {
  field: 'createTime',
  name: '创建时间'
}]

export default {

  name: 'testTable',

  data () {
    return {
      rows: [],
      fields: fields,
      pageInfo: {
        page: 1,
        rows: 10
      },
      total: 0,
      form: {
        testId: '',
        testName: ''
      },
      editForm: {
        testName: ''
      },
      isModal: false,
      checkbox: {
        checked: false,
        show: true
      },
      action: 'save'
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
    },

    formReset () {
      this.form = {
        testName: ''
      }
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
      this.editForm = {
        testId: '',
        testName: ''
      }
      this.isModal = true
      this.action = 'save'
    },

    deleteHandle () {
      const rows = this.getSelectedRows()
      if (rows.length < 1) {
        console.log('请至少选择一行数据!')
        alert('请至少选择一行数据!')
        return
      }
      console.log(rows)
    },

    updateHandle () {
      const rows = this.getSelectedRows()
      if (rows.length !== 1) {
        console.log('请选中一行数据!')
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
      // const tmpParam = Object.assign(this.form, this.pageInfo)

      const tmpParam = this.form
      tmpParam.page = this.pageInfo

      axios
        .post('/api/test/queryPage', tmpParam)
        .then(response => {
          this.rows = response.data.rows
          this.total = response.data.total
          this.initCheckbox()
        })
        .catch(error => console.log(error))
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
    }
  },

  mounted () {
    this.getList()
    console.log(this)
  }
}

</script>
<style scoped>
.modal__inner {
  padding: 30px;
  padding-bottom: 50px !important;
}

.form .button-group {
  position: absolute;
  right: 8px;
  bottom: 8px;
}
</style>
