<template>
  <div>
    <baseTable :fields="fields" baseURL="/api/user" :api="api" :btns="btns"></baseTable>
    <!-- 弹出窗开始 -->
    <div class="modal">
      <transition name="bounce">
        <div v-if="isModal" class="modal__inner panel" style="width: 900px; height: 600px;">
          <h1 class="paenl__title--border">选择</h1>
          <div class="panel__body">
            <baseTable :fields="roleFiled" baseURL="/api/role"></baseTable>
          </div>
          <div class="button-group">
            <a class="button">确定</a>
            <a @click="isModal = false" class="button">取消</a>
          </div>
        </div>
      </transition>
    </div>
    <div class="mask" v-show="isModal"></div>
    <!-- 弹出框结束 -->
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
          click: (rows) => {
            console.log(rows)
            console.log(this)
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
