<template>
  <baseTable :fields="fields" baseURL="/api/role"></baseTable>
</template>

<script>
export default {

  name: 'codeTypeTable',

  data () {
    return {

      fields: [
        {
          field: 'roleId',
          name: '角色ID',
          hidden: true
        },
        {
          field: 'roleName',
          name: '角色名'
        },
        {
          field: 'options',
          name: '角色配置项'
        },
        {
          field: 'parentRoleId',
          name: '父角色ID'
        },
        {
          field: 'sort',
          name: '排序'
        },
        {
          field: 'createTime',
          name: '创建时间'
        }
      ]
    }
  },

  methods: {}
}

</script>
<style scoped>
</style>
