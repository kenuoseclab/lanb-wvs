<template>
  <div>
    <div class="modal" v-show="isModal">
      <transition name="bounce">
        <div v-show="isModal" class="modal__inner panel">
          <h1>编辑表单</h1>
          <form class="form modal__body">
            <template v-for="(field, index) in fields">
              <div v-show="!field.hidden" :key="index" class="form__block">
                <label class="input-label" :for="field.field">{{field.name}}</label>
                <!-- 判断是否包含下拉 -->
                <template v-if="field.type === 'select'">
                  <select class="input" v-model="editForm[field.field]" :placeholder="field.name">
                    <option value>请选择</option>
                    <template v-for="(codeType, index) in getCodeTypeMap(field)">
                      <option :value="codeType.value" v-bind:key="index">{{ codeType.name }}</option>
                    </template>
                  </select>
                </template>
                 <!-- 是否为日期类型 -->
                <template v-else-if="field.type === 'date'">
                  <datepiacker
                    style="margin-top: 8px; margin-right: 8px;"
                    :key="index"
                    :day.sync="form[field.field]"
                  ></datepiacker>
                </template>
                <template v-else>
                  <input class="input" v-model="editForm[field.field]" :placeholder="field.name">
                </template>
              </div>
            </template>
          </form>
          <div class="button-group">
            <a @click="postForm" class="button">确定</a>
            <a @click="isModal = false" class="button">取消</a>
          </div>
        </div>
      </transition>
    </div>
    <!-- <div v-show="isModal" class="mask"></div> -->

    <transition name="fade">
      <div class="dialog" v-show="isDialog">
        <div class="dialog__inner">
          <h1>提示</h1>
          <div class="dialog__body">操作成功</div>
          <div class="button-group">
            <a @click="isDialog = false" class="button">确定</a>
          </div>
        </div>
      </div>
    </transition>
    <!-- <div v-show="isDialog" class="mask"></div> -->

    <!-- <div class="modal" v-show="isDialog">
      <transition name="bounce">
        <div v-show="isDialog" class="modal__inner panel">
          <h1>提示</h1>
          <div class="modal__body">
            <div class="dialog__body">操作成功</div>
          </div>
          <div class="button-group">
            <a @click="isDialog = false" class="button">确定</a>
          </div>
        </div>
      </transition>
    </div>-->

    <div class="panel">
      <form class="form">
        <template v-for="(field, index) in fields">
          <!-- 是否为下拉 -->
          <template v-if="field.type === 'select'">
            <select
              :key="index"
              class="input"
              v-model="form[field.field]"
              :placeholder="field.name"
            >
              <option value>{{ field.name }}</option>
              <template v-for="(codeType, index) in getCodeTypeMap(field)">
                <option :value="codeType.value" v-bind:key="index">{{ codeType.name }}</option>
              </template>
            </select>
          </template>
          <!-- 是否为日期类型 -->
          <template v-else-if="field.type === 'date'">
            <datepiacker
              style="margin-top: 8px; margin-right: 8px;"
              :key="index"
              :day.sync="form[field.field]"
            ></datepiacker>
          </template>
          <!-- 否则输入框 -->
          <template v-else>
            <input :key="index" class="input" v-model="form[field.field]" :placeholder="field.name">
          </template>
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
              <th v-show="!field.hidden" :key="index">{{field.name}}</th>
            </template>
          </tr>
        </thead>

        <transition name="fade">
          <tbody v-show="show">
            <tr :key="index" v-for="(row, index) in rows">
              <td v-if="checkbox.show">
                <input v-model="row.checked" class="checkbox" type="checkbox">
              </td>
              <template v-for="(field, fieldIndex) in fields">
                <td v-if="!field.hidden" :key="fieldIndex">{{cellFormatter(field, row)}}</td>
              </template>
            </tr>
          </tbody>
        </transition>
      </table>

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
      show: false,
      isDialog: false,
      day: ''
    }
  },

  computed: {
    maxPage () {
      if (this.total % this.pageInfo.rows === 0) {
        return parseInt(this.total / this.pageInfo.rows)
      }
      return parseInt(this.total / this.pageInfo.rows) + 1
    }
  },

  methods: {

    // 取得代码类型列表
    getCodeTypeMap (field) {
      return this.$store.state.cache.codeInfo[field.codeType]
    },

    // 单元格格式化
    cellFormatter (field, row) {
      let val = String(row[field.field])
      // 处理需要格式化内容
      if (typeof field.codeType !== 'undefined') {
        let codeTypeName = field.codeType
        let codeInfo = this.$store.state.cache.codeInfo[codeTypeName]
        for (let index = 0; index < codeInfo.length; index++) {
          const element = codeInfo[index]
          if (element.value === val) {
            return element.name
          }
        }
        return val
      } else {
        return val
      }
    },

    // 提交表单
    postForm () {
      const tmpParam = this.editForm
      delete tmpParam.checked
      if (this.action === 'save') {
        this
          .$post(this.baseURL + this.api.save, tmpParam)
          .then(data => {
            if (data.success) {
              this.isModal = false
              this.isDialog = true
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
              this.isDialog = true
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

    // 表单重置
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
      this.show = false
      const row = rows[0]
      delete row.checked
      this
        .$post(this.baseURL + this.api.delete, row)
        .then(data => {
          if (data.success) {
            this.isDialog = true
            this.checkbox.checked = false
            this.show = true
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

    // 查询
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
          // 强制刷新dom,防止checkbox出现问题
          this.$nextTick(() => {
            this.show = true
            this.initCheckbox()
          })
        })
        .catch(() => {
          this.$router.push({
            path: '/login'
          })
        })
    },

    // 改变页码
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

    // 初始化编辑表单
    initEditForm () {
      const tmpForm = {}
      for (let index = 0; index < this.fields.length; index++) {
        const field = this.fields[index]
        tmpForm[field.field] = ''
      }
      this.editForm = tmpForm
    },

    // 初始化查询表单
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
.form .input {
  margin-top: 8px;
  margin-right: 8px;
}

.form .button {
  margin-top: 8px;
  margin-right: 8px;
}

.pagination .rows {
  float: right;
}
</style>
