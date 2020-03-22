<template>
  <div>
    <div class="row">
      <div class="col-6">
        <div class="panel" style="height: 600px;">
          <h1>新建扫描任务</h1>
          <div class="panel__body">
            <form class="form">
              <div class="form__block">
                <label class="input-label" for="taskName">任务名</label>
                <input v-model="form.taskName" class="input" placeholder="请输入任务名" />
                <a class="edit-btn" @click="generateTaskName">
                  <!-- <i class="iconfont icon-addNew"></i> -->
                  生成
                </a>
              </div>
              <div class="form__block">
                <label class="input-label" for="任务周期">任务周期</label>
                <select v-model="form.cycle" class="input">
                  <option value>请选择任务周期</option>
                  <option value="0">仅一次</option>
                  <option value="1">每日扫描任务</option>
                  <option value="2">每周扫描任务</option>
                  <option value="3">每月扫描任务</option>
                  <option value="4">自定义周期</option>
                </select>
                <a class="edit-btn">
                  <!-- <i class="iconfont icon-addNew"></i> -->
                  自定义
                </a>
              </div>
              <div class="form__block">
                <label class="input-label" for="资产列表">资产列表</label>
                <input hidden class="input" v-model="form.assets" placeholder="请选择资产列表" />
                <el-tag
                  v-for="asset in form.assetArr"
                  :key="asset"
                  type="info"
                  effect="plain"
                >{{asset.assetName}}</el-tag>
                <el-button class="button-new-tag" size="small" @click="isModal = true">+ 选择</el-button>
              </div>
              <div class="form__block">
                <label class="input-label" for="漏洞列表">漏洞列表</label>
                <input hidden class="input" v-model="form.bugs" placeholder="请选择漏洞列表" />
                <el-tag
                  v-for="bug in form.bugArr"
                  :key="bug"
                  type="info"
                  effect="plain"
                >{{bug.bugName}}</el-tag>
                <el-button class="button-new-tag" size="small" @click="isModalBug = true">+ 选择</el-button>
              </div>
              <div class="form__block">
                <label class="input-label" for="扫描方式">扫描方式</label>
                <select v-model="form.sacnType" class="input">
                  <option value>请选择扫描方式</option>
                  <option value="1">基础扫描</option>
                  <option value="2">组合扫描</option>
                  <option value="3">自定义扫描</option>
                </select>
              </div>
              <div class="form__block">
                <label class="input-label" for="报表模板">报表模板</label>
                <select v-model="form.reportTemplate" class="input">
                  <option value>请选择报表模板</option>
                  <option value="0">基础模板</option>
                  <option value="1">自定义扫描1</option>
                  <option value="2">自定义扫描2</option>
                  <option value="3">自定义扫描3</option>
                </select>
              </div>

              <div class="form__block">
                <label class="input-label" for="desc">任务描述</label>
                <textarea
                  v-model="form.desc"
                  style="height: 150px; width: 60%;"
                  class="input"
                  placeholder="请输入任务描述"
                ></textarea>
              </div>
              <!-- <div class="form__block" style="margin-top: 32px;">
                <a class="button" @click="createTask">新建任务</a>
                <a class="button">重置</a>
              </div>-->
            </form>
          </div>
          <div class="button-group">
            <a class="button" @click="createTask">新建任务</a>
            <a class="button">重置</a>
          </div>
        </div>
      </div>

      <div class="col-6">
        <div class="panel" style="height: 600px;">
          <h1>扫描历史</h1>
          <div class="panel__body">
            <ul class="list">
              <template v-for="(hisTask, index) in hisTaskList">
                <li :key="index">{{ hisTask.createTime }}&nbsp;创建任务&nbsp;{{ hisTask.taskName }}</li>
              </template>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <!-- 提示框开始 -->
    <Dialog :show.sync="dialog.show" :ok="dialog.ok">{{ dialog.text }}</Dialog>
    <!-- 提示框结束 -->

    <!-- 弹出窗开始 -->
    <div class="modal">
      <transition name="bounce">
        <div v-if="isModal" class="modal__inner panel" style="width: 900px; height: 600px;">
          <h1 class="panel__title--border">选择</h1>
          <div class="panel__body">
            <baseTable ref="assetModal" :fields="fields" baseURL="/api/asset"></baseTable>
          </div>
          <div class="button-group">
            <a class="button" @click="assetModalClick">确定</a>
            <a @click="isModal = false" class="button">取消</a>
          </div>
        </div>
      </transition>
    </div>
    <div class="mask" v-if="isModal"></div>
    <!-- 弹出框结束 -->

    <!-- 弹出窗开始 -->
    <div class="modal">
      <transition name="bounce">
        <div v-if="isModalBug" class="modal__inner panel" style="width: 900px; height: 600px;">
          <h1 class="panel__title--border">选择</h1>
          <div class="panel__body">
            <baseTable ref="bugModal" :fields="bugFileds" baseURL="/api/bug"></baseTable>
          </div>
          <div class="button-group">
            <a class="button" @click="bugModalClick">确定</a>
            <a @click="isModalBug = false" class="button">取消</a>
          </div>
        </div>
      </transition>
    </div>
    <div class="mask" v-if="isModalBug"></div>
    <!-- 弹出框结束 -->
  </div>
</template>

<script>
var df = require('date-formatter')
export default {
  name: 'taskCreate',
  data () {
    return {

      dialog: {
        show: false,
        title: '提示',
        text: '是否跳转到列表页面?',
        ok: () => {
          this.dialog.show = false
          this.$router.push({
            path: '/task/task-table'
          })
        }
      },

      form: {
        taskName: '',
        bugs: '',
        bugArr: [],
        assets: '',
        assetArr: [],
        cycle: '0',
        sacnType: '1',
        reportTemplate: '0',
        desc: ''
      },

      isModal: false,

      isModalBug: false,

      fields: [
        {
          field: 'assetId',
          name: '资产ID',
          hidden: true
        },
        {
          field: 'assetName',
          name: '资产名称'
        },
        {
          field: 'updateTime',
          name: '创建时间',
          type: 'date'
        },
        {
          field: 'createUserId',
          name: '创建人'
        },
        {
          field: 'createTime',
          name: '更新时间',
          type: 'date'
        },
        {
          field: 'updateUserId',
          name: '更新人'
        },
        {
          field: 'remark',
          name: '备注'
        }
      ],

      bugFileds: [
        {
          field: 'bugId',
          name: '漏洞ID',
          hidden: true
        },
        {
          field: 'bugName',
          name: '漏洞名'
        },
        {
          field: 'desc',
          name: '漏洞描述',
          type: 'textarea'
        },
        {
          field: 'createTime',
          name: '创建时间',
          type: 'date'
        },
        {
          field: 'createUserName',
          name: '创建人'
        },
        {
          field: 'updateTime',
          name: '更新时间',
          type: 'date'
        },
        {
          field: 'updateUserName',
          name: '更新人'
        },
        {
          field: 'remark',
          name: '备注',
          type: 'textarea'
        }
      ],

      hisTaskList: []

    }
  },

  methods: {
    createTask () {
      this
        .$post('/api/task/execCreateTask', this.form)
        .then(data => {
          if (data.success) {
            this.dialog.text = '是否跳转到列表页面?'
            this.dialog.show = true
            this.getHisTaskList()
          } else {
            this.dialog.text = data.msg
            this.dialog.show = true
          }
        })
        .catch(() => {
          // this.$router.push({
          //   path: '/login'
          // })
        })
    },

    assetModalClick () {
      const assetModal = this.$refs.assetModal
      const selectedRowArr = assetModal.getSelectedRows()
      this.form.assetArr = selectedRowArr
      const resultArr = []
      for (let i = 0; i < selectedRowArr.length; i++) {
        resultArr.push(selectedRowArr[i].assetId)
      }
      this.form.assets = resultArr.join(',')
      this.isModal = false
    },

    bugModalClick () {
      const bugModal = this.$refs.bugModal
      const selectedRowArr = bugModal.getSelectedRows()
      const resultArr = []
      for (let i = 0; i < selectedRowArr.length; i++) {
        resultArr.push(selectedRowArr[i].bugId)
      }
      this.form.bugs = resultArr.join(',')
      this.form.bugArr = selectedRowArr
      this.isModalBug = false
    },

    generateTaskName () {
      const date = new Date()
      const dateStr = df(date, 'YYYY-MM-DD hh:mm:ss')
      const taskName = '[' + dateStr + ']日常任务'
      this.form.taskName = taskName
      this.form.desc = taskName
    },

    getHisTaskList () {
      this.$post('/api/task/queryPage', { page: { rows: -1, page: 1 } }).then(data => {
        if (data.rows != null) {
          this.hisTaskList = data.rows
        }
      }).catch(e => {
        console.log(e)
      })
    }
  },

  created () {
    this.getHisTaskList()
  }
}
</script>

<style lang="scss" scoped>
.edit-btn {
  display: inline-block;
  margin-left: 8px;
  color: #3080fe;
  cursor: pointer;

  &:hover {
    text-decoration: underline;
  }

  i {
    font-size: 9pt;
  }
}

.el-tag + .el-tag {
  margin-right: 8px;
  margin-top: 8px;
}
</style>
