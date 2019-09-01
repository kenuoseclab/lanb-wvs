<template>
  <baseTable :fields="fields" baseURL="/api/asset" :btns="btns"></baseTable>
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

      btns: [
        {
          title: '资产信息',
          icon: 'icon-chazhao'
        },
        {
          title: '端口扫描',
          icon: 'icon-chazhao'
        },
        {
          title: '资产发现',
          icon: 'icon-chazhao'
        }
      ]
    }
  }
}

</script>
<style scoped>
</style>
