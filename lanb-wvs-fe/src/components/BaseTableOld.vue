<template>
  <div>
    <!-- 模态框 -->
    <div class="modal" :style="{transform: transform}" ref="modal">
      <transition name="bounce" @after-enter="afterEnter">
        <div v-if="isModal" class="modal__inner panel">
          <!-- <h1 class="panel__title--border">{{ actionTitle }}</h1> -->
          <h1>{{ actionTitle }}</h1>
          <div class="panel__body">
            <form class="form modal__body">
              <template v-for="(field, index) in fields">
                <div v-show="!field.hidden" :key="index" class="form__block">
                  <label class="input-label" :for="field.field">{{field.name}}</label>
                  <!-- 判断是否包含下拉 -->
                  <template v-if="field.type === 'select'">
                    <select class="input" v-model="editForm[field.field]" :placeholder="field.name">
                      <option value>请选择{{ field.name }}</option>
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
                      :day.sync="editForm[field.field]"
                    ></datepiacker>
                  </template>
                  <!-- 文本区域 -->
                  <template v-else-if="field.type === 'textarea'">
                    <textarea
                      style="height: 100px;"
                      class="input"
                      v-model="editForm[field.field]"
                      :placeholder="field.name"
                    ></textarea>
                  </template>
                  <!-- 密码 -->
                  <template v-else-if="field.type === 'password'">
                    <input
                      autocomplete="off"
                      class="input"
                      type="password"
                      v-model="editForm[field.field]"
                      :placeholder="field.name"
                    />
                  </template>
                  <!-- 输入框 -->
                  <template v-else>
                    <input
                      autocomplete="off"
                      class="input"
                      type="text"
                      v-model="editForm[field.field]"
                      :placeholder="field.name"
                    />
                  </template>
                </div>
              </template>
            </form>
          </div>
          <div class="button-group">
            <a @click="postForm" class="button">确定</a>
            <a @click="isModal = false" class="button">取消</a>
          </div>
        </div>
      </transition>
    </div>
    <div class="mask" v-if="isModal"></div>

    <!-- 提示框 -->
    <Dialog :show.sync="isDialog">{{ dialogMsg }}</Dialog>

    <!-- 删除确认框 -->
    <Dialog :show.sync="deleteAction.isDialog" :ok="deleteAction.ok">{{ deleteAction.dialogMsg }}</Dialog>

    <!-- 文字提示框 -->
    <!-- <input
      class="input"
      v-model="input.text"
      v-show="input.show"
      :style="'z-index: 9999; transition: none; position: fixed; ' + 'top: ' + input.offsetTop + '; left: ' + input.offsetLeft"
    /> -->

    <div class="row" @click="input.show = false">
      <div class="col-12">
        <div class="panel" v-if="isSearch">
          <form class="form panel__body">
            <template v-for="(field, index) in fields">
              <!-- 是否为下拉 -->
              <template v-if="field.type === 'select'">
                <select
                  :key="index"
                  class="input"
                  v-model="form[field.field]"
                  :placeholder="field.name"
                >
                  <option value>请选择{{ field.name }}</option>
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
                <input
                  :key="index"
                  class="input"
                  v-model="form[field.field]"
                  :placeholder="field.name"
                />
              </template>
            </template>
            <a @click="search" class="button">
              <i class="iconfont icon-chazhao"></i>
              查询
            </a>
            <a @click="formReset" class="button">
              <i class="iconfont icon-zhongzhi"></i>
              重置
            </a>
          </form>
        </div>

        <div class="panel">
          <div>
            <div class="tool-bar" v-if="isToolbar">
              <template v-if="isDefaultBtn">
                <a @click="saveHandle" class="button">
                  <i class="iconfont icon-addNew"></i>
                  新增
                </a>
                <a @click="deleteHandle" class="button">
                  <i style="font-size: 14px;" class="iconfont icon-shanchu"></i>
                  删除
                </a>
                <a @click="updateHandle" class="button">
                  <i style="font-size: 14px;" class="iconfont icon-edit"></i>
                  修改
                </a>
              </template>

              <template v-for="(btn, index) in btns">
                <a :key="index" @click="btnClick(btn)" class="button">
                  <i :key="index" v-if="btn.icon != null" :class="'iconfont ' + btn.icon"></i>
                  {{ btn.title }}
                </a>
              </template>
            </div>

            <div v-show="!show" style="background-color: #f9f9f9; margin: 0px 8px; height: 50vh;"></div>
            <transition name="fade">
              <div v-show="show" style="padding: 0px 8px;">
                <table class="table">
                  <thead>
                    <tr>
                      <th v-if="checkbox.show" style="text-align: center;">
                        <input
                          v-model="checkbox.checked"
                          @click="selectToggle"
                          class="checkbox"
                          type="checkbox"
                        />
                      </th>

                      <template v-for="(field, index) in fields">
                        <th v-show="!field.hidden" :key="index" :width="field.width">{{field.name}}</th>
                      </template>
                    </tr>
                  </thead>

                  <tbody>
                    <tr :key="index" v-for="(row, index) in rows">
                      <td v-if="checkbox.show" style="text-align: center;">
                        <input v-model="row.checked" class="checkbox" type="checkbox" />
                      </td>
                      <template v-for="(field, fieldIndex) in fields">
                        <td v-if="!field.hidden" :key="fieldIndex" :width="field.width">
                          <template v-if="field.formatter != null">
                            <div v-html="field.formatter(cellFormatter(field, row), row)"></div>
                          </template>
                          <template v-else>
                            <div
                              @dblclick="cellDbclick($event, cellFormatter(field, row))"
                              :title="cellFormatter(field, row)"
                            >{{cellFormatter(field, row)}}</div>
                          </template>
                        </td>
                      </template>
                    </tr>
                    <tr v-if="rows.length === 0">
                      <td :colspan="noDataColspan" style="text-align: center;">没有数据</td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </transition>

            <div class="pagination">
              <a @click="pageChange(-1)" class="button">上一页</a>
              <input type="number" v-model="pageInfo.page" @change="getList" class="input" />
              <a @click="pageChange(1)" class="button">下一页</a>

              <div class="rows">
                <label for="rows">每页</label>
                <input
                  type="number"
                  class="input"
                  placeholder
                  v-model="pageInfo.rows"
                  @change="getList"
                />
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- loading -->
    <loading
      :active="!show"
      :can-cancel="loading.canCancel"
      :on-cancel="loading.onCancel"
      :color="loading.color"
      :opacity="loading.opacity"
    ></loading>
  </div>
</template>

<script>
import Loading from 'vue-loading-overlay'
import 'vue-loading-overlay/dist/vue-loading.css'
export default {

  name: 'baseTable',

  props: {

    // 条件
    where: {
      type: Object,
      default: null
    },

    // 是否显示搜索条件
    isSearch: {
      type: Boolean,
      default: true
    },

    // 是否显示工具栏
    isToolbar: {
      type: Boolean,
      default: true
    },

    // 字段配置
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

    // 模块基础地址
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
    },

    // 按钮配置
    btns: {
      type: Array,
      default: () => {
        return []
      }
    },

    isDefaultBtn: {
      type: Boolean,
      default: () => {
        return true
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
      day: '',
      loading: {
        canCancel: true,
        onCancel: () => {
          this.show = true
        },
        opacity: 0,
        color: 'rgb(0, 123, 255)'
      },
      dialogMsg: '操作成功',

      // 删除操作确认框
      deleteAction: {
        isDialog: false,
        dialogMsg: '确认删除该行?',
        ok: () => {

        }
      },

      transform: '',
      input: {
        offsetTop: '0px',
        offsetLeft: '0px',
        text: '',
        show: false
      }
    }
  },

  computed: {
    maxPage () {
      if (this.total % this.pageInfo.rows === 0) {
        return parseInt(this.total / this.pageInfo.rows)
      }
      return parseInt(this.total / this.pageInfo.rows) + 1
    },

    actionTitle () {
      if (this.action === 'save') {
        return '新增表单'
      } else if (this.action === 'update') {
        return '编辑表单'
      }
      return '表单'
    },

    noDataColspan () {
      let colspan = 0
      for (let index = 0; index < this.fields.length; index++) {
        const field = this.fields[index]
        if (!field.hidden) {
          colspan++
        }
      }
      if (this.checkbox.show) {
        colspan++
      }
      return colspan
    }
  },

  methods: {

    getElementLeft (element) {
      var actualLeft = element.offsetLeft
      var current = element.offsetParent
      while (current !== null) {
        actualLeft += (current.offsetLeft + current.clientLeft)
        current = current.offsetParent
      }
      return actualLeft
    },

    getElementTop (element) {
      var actualTop = element.offsetTop
      var current = element.offsetParent
      while (current !== null) {
        actualTop += (current.offsetTop + current.clientTop)
        current = current.offsetParent
      }
      return actualTop
    },

    // 单元格双击事件
    cellDbclick (event) {
      this.input.show = true
      let offsetTop = this.getElementTop(event.srcElement) + 'px'
      let offsetLeft = this.getElementLeft(event.srcElement) + 'px'
      let text = event.target.innerText

      this.input.offsetTop = offsetTop
      this.input.offsetLeft = offsetLeft
      this.input.text = text
    },

    // 取得代码类型列表
    getCodeTypeMap  (field) {
      return this.$store.state.cache.codeInfo[field.codeType]
    },

    // 单元格格式化
    cellFormatter (field, row) {
      // 处理字符串
      let val = String(row[field.field])
      // 处理为空情况
      val = val === null || val === 'null' ? '' : val
      // 处理需要格式化内容
      if (typeof field.codeType !== 'undefined') {
        let codeTypeName = field.codeType
        let codeInfo = this.$store.state.cache.codeInfo[codeTypeName]
        // 处理为空情况
        if (typeof codeInfo === 'undefined') {
          return
        }
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
              this.dialogMsg = '保存成功'
              this.isDialog = true
              this.isModal = false
              this.getList()
            } else {
              this.dialogMsg = data.msg
              this.isDialog = true
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
              this.dialogMsg = '更新成功'
              this.isDialog = true
              this.getList()
            } else {
              this.dialogMsg = data.msg
              this.isDialog = true
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
        this.dialogMsg = '请选择一行数据!'
        this.isDialog = true
        return
      }

      // 弹出一个删除确认框
      this.deleteAction.isDialog = true

      this.deleteAction.ok = () => {
        this.show = false
        const row = rows[0]
        delete row.checked
        this
          .$post(this.baseURL + this.api.delete, row)
          .then(data => {
            if (data.success) {
              this.dialogMsg = '删除成功'
              this.isDialog = true
              this.deleteAction.isDialog = false
              this.checkbox.checked = false
              this.show = true
              this.getList()
            } else {
              this.dialogMsg = data.msg
              this.isDialog = true
              this.deleteAction.isDialog = false
              this.getList()
            }
          })
          .catch(() => {
            this.$router.push({
              path: '/login'
            })
          })
      }
    },

    updateHandle () {
      const rows = this.getSelectedRows()
      if (rows.length !== 1) {
        this.dialogMsg = '请选中一行数据!'
        this.isDialog = true
        return
      }
      /**
       * 对象拷贝,防止改动到表格内容
       */
      const tmpRow = JSON.parse(JSON.stringify(rows[0]))
      this.editForm = tmpRow
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
    },

    // 改变页码
    pageChange (num) {
      if (typeof (this.pageInfo.page) === 'string') {
        this.pageInfo.page = parseInt(this.pageInfo.page)
      }
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
    },

    // 按钮点击事件
    btnClick (btn) {
      if (typeof btn.click !== 'undefined') {
        btn.click(this.getSelectedRows(), this)
      }
    },

    keydownHandle (event) {
      var e = event || window.e
      var keyCode = e.keyCode || e.which
      switch (keyCode) {
        case 13:
          this.getList()
          break
      }
    },

    afterEnter () {
      const modal = this.$refs.modal
      const width = modal.offsetWidth
      const height = modal.offsetHeight
      // 如果不是是偶数,则加0.5px
      if (width % 2 !== 0) {
        this.transformX = 'calc(-50% + 0.5px)'
      } else {
        this.transformX = '-50%'
      }

      if (height % 2 !== 0) {
        this.transformY = 'calc(-50% + 0.5px)'
      } else {
        this.transformY = '-50%'
      }

      this.transform = 'translate(' + this.transformX + ',' + this.transformY + ')'
    },

    // 初始化where条件存在情况
    initWhereForm () {
      if (this.where != null) {
        for (const whereKey in this.where) {
          if (this.where.hasOwnProperty(whereKey)) {
            const whereItem = this.where[whereKey]
            // 遍历条件,满足则填充
            for (const formKey in this.form) {
              if (this.form.hasOwnProperty(formKey)) {
                if (whereKey === formKey) {
                  this.form[formKey] = whereItem
                }
              }
            }
          }
        }
      }
    }
  },

  created () {
    this.initEditForm()
    this.initSearchForm()
    this.getList()
    document.addEventListener('keydown', this.keydownHandle)
    // where条件初始化存在情况
    this.initWhereForm()
  },

  beforeDestroy () {
    document.removeEventListener('keydown', this.keydownHandle)
  },

  watch: {
    'pageInfo.rows': function (newVal, oldVal) {
      if (newVal <= 0) {
        this.pageInfo.rows = oldVal
      }
    },

    'pageInfo.page': function (newVal, oldVal) {
      if (newVal <= 0 && newVal > this.maxPage) {
        this.pageInfo.page = oldVal
      }
    }
  },

  components: {
    Loading
  }

}

</script>
<style lang="scss" scoped>
.form .input {
  // margin-top: 8px;
  margin-right: 8px;
}

.form .button {
  margin-top: 8px;
  margin-right: 8px;
}

.pagination .rows {
  float: right;
}

.tool-bar {
  .button {
    margin-right: 5px;
  }
}
</style>
