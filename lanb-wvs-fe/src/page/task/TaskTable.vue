<template>
  <baseTable :fields="fields" baseURL="/api/task"></baseTable>
</template>

<script>
export default {

  name: 'taskTable',

  data () {
    return {

      fields: [
        {
          field: 'taskId',
          name: '任务ID',
          hidden: true
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
      ]
    }
  },

  methods: {}
}

</script>
<style scoped>
</style>
