<template>
  <div>
    <baseTable :fields="fields" baseURL="/api/scanResult" :api="api"></baseTable>
  </div>
</template>

<script>
export default {
  name: 'scanResult',

  data () {
    return {

      isModal: false,

      fields: [
        {
          field: 'scanResultId',
          name: '扫描结果ID'
        },
        {
          field: 'bugId',
          name: '漏洞ID'
        },
        {
          field: 'assetId',
          name: '资产ID'
        },
        {
          field: 'taskLogId',
          name: '任务日志ID'
        },
        {
          field: 'scanResult',
          name: '扫描结果',
          codeType: 'scanResult',
          type: 'select'
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
          field: 'updateTime',
          name: '更新时间',
          type: 'date'
        },
        {
          field: 'remark',
          name: '备注'
        }
      ],

      api: {
        'save': '/save',
        'delete': '/delete',
        'update': '/update',
        'query': '/queryPage'
      }

    }
  }
}

</script>
<style scoped>
</style>
