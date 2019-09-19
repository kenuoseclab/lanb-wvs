<template>
  <baseTable :fields="fields" :baseURL="baseURL" :btns="btns"></baseTable>
</template>

<script>
export default {

  name: 'taskTable',

  data () {
    return {

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
        },
        {
          field: 'status',
          name: '状态',
          type: 'select',
          codeType: 'taskStatus'
        }
      ],

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
          icon: 'icon-guanlian'
        },
        {
          title: '关联资产',
          icon: 'icon-guanlian'
        },
        {
          title: '任务信息',
          icon: 'icon-xiangqing'
        },
        {
          title: '开始任务',
          icon: 'icon-saomiao',
          click: (rows, handle) => {
            if (rows.length === 1) {
              const row = rows[0]
              this
                .$post(this.baseURL + '/startTask', row)
                .then(data => {
                  this.$dialog({
                    text: data.msg
                  }).display()
                })
            } else {
              this.$dialog({
                text: '请选择一个任务'
              }).display()
            }
            // console.log(handle)
          }
        }
      ]
    }
  },

  methods: {}
}

</script>
<style scoped>
</style>
