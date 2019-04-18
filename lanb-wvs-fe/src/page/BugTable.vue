<template>
  <baseTable :fields="fields" baseURL="/api/bug"></baseTable>
</template>

<script>
export default {

  name: 'bugLevelTable',

  data () {
    return {

      fields: [
        {
          field: 'bugId',
          name: '漏洞ID'
        },
        {
          field: 'bugName',
          name: '漏洞名'
        },
        {
          field: 'desc',
          name: '漏洞描述'
        },
        {
          field: 'createTime',
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
  },

  methods: {}
}

</script>
<style scoped>
</style>
