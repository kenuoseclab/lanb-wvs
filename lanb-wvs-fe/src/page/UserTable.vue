<template>
  <baseTable :fields="fields" baseURL="/api/user"></baseTable>
</template>

<script>
export default {
  name: 'userTable',

  data () {
    return {

      fields: [
        {
          field: 'userId',
          name: '用户ID'
        },
        {
          field: 'userName',
          name: '用户名称'
        },
        {
          field: 'password',
          name: '密码'
        },
        {
          field: 'createDate',
          type: 'date',
          name: '创建时间'
        },
        {
          field: 'lastDate',
          type: 'date',
          name: '更新时间'
        },
        {
          field: 'enable',
          type: 'select',
          name: '是否启用',
          codeType: 'yesOrNo'
        }
      ]
    }
  }
}

</script>
<style scoped>
</style>
