<template>
  <div>
    <baseTable :fields="fields" :baseURL="baseURL" :btns="btns"></baseTable>

    <!-- 任务信息 -->
    <Modal :show.sync="taskInfo.show" title="任务信息" width="95%">
      <TaskInfoPage></TaskInfoPage>
    </Modal>
  </div>
</template>

<script>
import TaskInfoPage from './TaskInfoPage'
export default {

  name: 'taskTable',

  data () {
    return {

      taskInfo: {
        show: false
      },

      baseURL: '/api/task',

      fields: [
        {
          field: 'taskId',
          name: '任务ID'
        },
        {
          field: 'taskName',
          name: '任务名'
        },
        {
          field: 'desc',
          name: '任务描述'
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
          name: '备注'
        }
        // {
        //   field: 'status',
        //   name: '状态',
        //   type: 'select',
        //   codeType: 'taskStatus',
        //   formatter (val) {
        //     return '<span class="tag">' + val + '</span>'
        //   }
        // }
      ],

      dialog: null,

      taskLogQuery: null,

      btns: [
        {
          title: '新建任务',
          icon: 'icon-addNew',
          click: () => {
            this.$router.push('/task/task-create')
          }
        },
        {
          title: '关联漏洞',
          icon: 'icon-guanlian',
          click: () => {
            this.$dialog({
              text: '暂未开发'
            }).display()
          }
        },
        {
          title: '关联资产',
          icon: 'icon-guanlian',
          click: () => {
            this.$dialog({
              text: '暂未开发'
            }).display()
          }
        },
        {
          title: '任务信息',
          icon: 'icon-xiangqing',
          click: (rows, handle) => {
            this.taskInfo.show = true
          }
        },
        {
          title: '开始任务',
          icon: 'icon-saomiao',
          click: (rows, handle) => {
            this.dialog = this.$dialog({
              text: '开始任务成功!是否跳转到任务日志?',
              ok: this.startTaskOk
            })
            if (rows.length === 1) {
              const row = rows[0]
              this
                .$post(this.baseURL + '/startTask', row)
                .then(data => {
                  const retData = data.data
                  if (data.success) {
                    this.taskLogQuery = {
                      taskLogId: retData.taskLogId
                    }
                    this.dialog.display()
                  } else {
                    this.$dialog({
                      text: '操作失败'
                    }).display()
                  }
                })
            } else {
              this.$dialog({
                text: '请选择一个任务'
              }).display()
            }
          }
        }
      ]
    }
  },

  methods: {

    startTaskOk () {
      this.dialog.close()
      this.$router.push({
        path: '/task/task-log-table',
        query: this.taskLogQuery
      })
    }

  },

  components: {
    TaskInfoPage
  }
}

</script>
<style scoped>
</style>
