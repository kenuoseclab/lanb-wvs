<template>
  <div>
    <baseTable :fields="fields" baseURL="/api/user" :api="api" :btns="btns"></baseTable>
    <Modal :show.sync="isModal">
      <baseTable :fields="roleFiled" baseURL="/api/role"></baseTable>
    </Modal>
  </div>
</template>

<script>
export default {
  name: 'userTable',

  data () {
    return {

      isModal: false,

      roleFiled: [
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
      ],

      api: {
        'save': '/register',
        'delete': '/delete',
        'update': '/update',
        'query': '/queryPage'
      },

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
          click: (rows, handle) => {
            for (let index = 0; index < rows.length; index++) {
              const row = rows[index]
              console.log(row)
            }
            this.isModal = true
          }
        }
      ]
    }
  }
}

</script>
<style scoped>
</style>
