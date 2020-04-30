<template>
  <baseTable :fields="fields" :baseURL="baseURL" :where="where" :btns="btns"></baseTable>
</template>

<script>
export default {

  name: 'taskLogTable',

  data () {
    return {

      baseURL: '/api/taskLog',

      fields: [
        {
          field: 'taskLogId',
          name: '任务日志ID'
        },
        {
          field: 'taskId',
          name: '任务ID'
        },
        {
          field: 'createTime',
          name: '创建时间',
          type: 'date'
        },
        {
          field: 'createUserId',
          name: '创建人'
        },
        {
          field: 'finishedTime',
          name: '完成时间',
          type: 'date'
        },
        {
          field: 'taskLogStatus',
          name: '任务状态',
          type: 'select',
          codeType: 'taskStatus',
          formatter (val) {
            return '<span class="tag">' + val + '</span>'
          }
        },
        {
          field: 'remark',
          name: '备注'
        }
      ],

      where: null,

      btns: [
        {
          title: '扫描报告'
        }
      ]
    }
  },

  created () {
    const taskId = this.$route.query.taskId
    if (taskId !== null && typeof (taskId) !== 'undefined') {
      this.where.taskId = taskId
    }

    const taskLogId = this.$route.query.taskLogId
    if (taskLogId !== null && typeof (taskLogId) !== 'undefined') {
      this.where = {
        taskLogId: taskLogId
      }
    }
  }

}

</script>
<style scoped>
</style>
