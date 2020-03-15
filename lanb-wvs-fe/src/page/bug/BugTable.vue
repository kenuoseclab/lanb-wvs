<template>
  <div>
    <baseTable :fields="fields" baseURL="/api/bug" :btns="btns"></baseTable>
    <Modal :show.sync="linkScript.isShow">
      <h1 slot="header">关联脚本</h1>
    </Modal>
  </div>
</template>

<script>
export default {

  name: 'bugTable',

  data () {
    return {

      fields: [
        {
          field: 'bugId',
          name: '漏洞ID',
          hidden: true
        },
        {
          field: 'bugName',
          name: '漏洞名'
        },
        {
          field: 'desc',
          name: '漏洞描述',
          type: 'textarea'
        },
        {
          field: 'createTime',
          name: '创建时间',
          type: 'date'
        },
        {
          field: 'createUserName',
          name: '创建人'
        },
        {
          field: 'updateTime',
          name: '更新时间',
          type: 'date'
        },
        {
          field: 'updateUserName',
          name: '更新人'
        },
        {
          field: 'remark',
          name: '备注',
          type: 'textarea'
        }
      ],

      linkScript: {
        isShow: false
      },

      btns: [
        {
          title: '关联脚本',
          icon: 'icon-guanlian',
          click: (rows, handle) => {
            this.linkScript.isShow = true
            console.log(rows)
            console.log(handle)
          }
        },
        {
          title: '漏洞信息',
          icon: 'icon-guanlian',
          click: function (rows, handle) {
            console.log(rows)
            console.log(handle)
          }
        },
        {
          title: '漏洞批量导入',
          click: function (rows, handle) {
            console.log(rows)
            console.log(handle)
          }
        },
        {
          title: '漏洞导入模板',
          click: function (rows, handle) {
            console.log(rows)
            console.log(handle)
          }
        }
      ]
    }
  },

  methods: {}
}

</script>
<style scoped>
</style>
