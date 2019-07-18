<template>
  <baseTable :fields="fields" baseURL="/api/bugLevel"></baseTable>
</template>

<script>
export default {

  name: 'bugLevelTable',

  data () {
    return {

      fields: [
        {
          field: 'bugLevelId',
          name: '漏洞等级ID',
          hidden: true
        },
        {
          field: 'bugLevelName',
          name: '漏洞等级名'
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
      ]
    }
  },

  methods: {}
}

</script>
<style scoped>
</style>
