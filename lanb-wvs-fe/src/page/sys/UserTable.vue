<template>
  <baseTable :fields="fields" baseURL="/api/user" :api="api" :btns="btns"></baseTable>
</template>

<script>
export default {
  name: 'userTable',

  data () {
    return {

      api: {
        'save': '/register',
        'delete': '/delete',
        'update': '/update',
        'query': '/queryPage'
      },

      fields: [
        {
          field: 'userId',
          name: '用户ID',
          hidden: true
        },
        {
          field: 'userName',
          name: '用户名称'
        },
        {
          field: 'password',
          name: '密码',
          type: 'password'
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
      ],

      btns: [
        {
          title: '角色授权',
          icon: 'icon-shouquan',
          click: function (rows) {
            console.log(rows)
          }
        }
      ]
    }
  }
}

</script>
<style scoped>
</style>
