<template>
  <baseTable :fields="fields" :baseURL="baseURL"></baseTable>
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
          name: '任务ID'
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
          codeType: 'taskStatus'
        },
        {
          field: 'remark',
          name: '备注'
        }
      ]
    }
  },

  methods: {}
}

</script>
<style scoped>
</style>
