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
            <a @click="postForm" class="button">确定</a>
            <a @click="isModal = false" class="button">取消</a>
          </div>
        </form>
      </div>
      <div class="mask" @click="isModal = false"></div>
    </div>

    <div class="panel">
      <form class="form">
        <template v-for="(field, index) in fields">
          <input
            v-if="!field.hidden"
            :key="index"
            class="input"
            v-model="form[field.field]"
            :placeholder="field.name"
          >
        </template>
        <a @click="search" class="button">查询</a>
        <a @click="formReset" class="button">重置</a>
      </form>
    </div>

    <div class="panel">
      <div class="tool-bar">
        <a @click="saveHandle" class="button">新增</a>
        <a @click="deleteHandle" class="button">删除</a>
        <a @click="updateHandle" class="button">修改</a>
      </div>

      <transition name="component-fade" mode="out-in">
        <table class="table" key="table">
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
      </transition>

      <div class="pagination">
        <a @click="pageChange(-1)" class="button">上一页</a>
        <input type="text" v-model="pageInfo.page" class="input" value="1">
        <a @click="pageChange(1)" class="button">下一页</a>

        <div class="rows">
          <label for="rows">每页</label>
          <input type="text" class="input" placeholder v-model="pageInfo.rows" @change="getList">
        </div>
      </div>
    </div>
  </div>
</template>

<script>
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
    },
    api: {
      type: Object,
      default: () => {
        return {
          'save': '/save',
          'delete': '/delete',
          'update': '/update',
          'query': '/queryPage'
        }
      }
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
      form: null,
      show: false
    }
  },

  computed: {
    maxPage () {
      return parseInt(this.total / this.pageInfo.rows) + 1
    }
  },

  methods: {

    postForm () {
      const tmpParam = this.editForm
      delete tmpParam.checked
      if (this.action === 'save') {
        this
          .$post(this.baseURL + this.api.save, tmpParam)
          .then(data => {
            if (data.success) {
              this.isModal = false
              this.getList()
            } else {
              alert(data.msg)
            }
          })
          .catch(() => {
            this.$router.push({
              path: '/login'
            })
          })
      } else if (this.action === 'update') {
        this
          .$post(this.baseURL + this.api.update, tmpParam)
          .then(data => {
            if (data.success) {
              this.isModal = false
              this.getList()
            } else {
              alert(data.msg)
            }
          })
          .catch(() => {
            this.$router.push({
              path: '/login'
            })
          })
      }
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
      this
        .$post(this.baseURL + this.api.delete, row)
        .then(data => {
          if (data.success) {
            this.getList()
          } else {
            alert(data.msg)
          }
        })
        .catch(() => {
          this.$router.push({
            path: '/login'
          })
        })
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
      this.show = false
      const tmpParam = this.form
      tmpParam.page = this.pageInfo

      this
        .$post(this.baseURL + this.api.query, tmpParam)
        .then(data => {
          this.rows = data.rows
          this.total = data.total
          this.show = true
          this.initCheckbox()
        })
        .catch(() => {
          this.$router.push({
            path: '/login'
          })
        })
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

.form .button {
  margin-top: 8px;
  margin-right: 8px;
}

.pagination .rows {
  float: right;
}

.component-fade-enter-active,
.component-fade-leave-active {
  transition: opacity 0.3s ease;
}
.component-fade-enter, .component-fade-leave-to
/* .component-fade-leave-active for below version 2.1.8 */ {
  opacity: 0;
}
</style>
