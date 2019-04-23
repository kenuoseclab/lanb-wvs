<template>
  <baseTable :fields="fields" baseURL="/api/asset"></baseTable>
</template>

<script>
export default {

  name: 'assetTable',

  data () {
    return {

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
          name: '创建时间'
        },
        {
          field: 'createUserId',
          name: '创建人'
        },
        {
          field: 'createTime',
          name: '更新时间'
        },
        {
          field: 'updateUserId',
          name: '更新人'
        },
        {
          field: 'remark',
          name: '备注'
        }
      ]
    }
  }
}

</script>
<style scoped>
</style>
