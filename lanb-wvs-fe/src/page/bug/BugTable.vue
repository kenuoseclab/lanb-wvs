<template>
  <baseTable :fields="fields" baseURL="/api/bug" :btns="btns"></baseTable>
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

      btns: [
        {
          title: '关联脚本',
          icon: 'icon-guanlian',
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
