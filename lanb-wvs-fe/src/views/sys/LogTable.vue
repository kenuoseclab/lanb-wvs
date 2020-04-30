<template>
  <baseTable :fields="fields" baseURL="/api/log"></baseTable>
</template>

<script>
export default {
  name: 'logTable',

  data () {
    return {

      fields: [
        {
          field: 'logId',
          name: '日志ID',
          hidden: true
        },
        {
          field: 'logType',
          name: '日志类型'
        },
        {
          field: 'logSource',
          name: '日志来源'
        },
        {
          field: 'logContent',
          name: '日志内容'
        },
        {
          field: 'createTime',
          name: '创建时间',
          type: 'date'
        }
      ]
    }
  }
}

</script>
<style scoped>
</style>
