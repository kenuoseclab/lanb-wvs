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
          name: '角色ID'
        },
        {
          field: 'roleName',
          name: '角色名'
        },
        {
          field: 'options',
          name: '角色配置项',
          hidden: true
        },
        {
          field: 'parentRoleId',
          name: '父角色ID',
          hidden: true
        },
        {
          field: 'sort',
          name: '排序'
        },
        {
          field: 'createTime',
          name: '创建时间',
          type: 'date'
        }
      ]
    }
  },

  methods: {}
}

</script>
<style scoped>
</style>
