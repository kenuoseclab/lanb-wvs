<template>
  <baseTable :fields="fields" baseURL="/api/menu" :btns="btns"></baseTable>
</template>

<script>
export default {

  name: 'menuTable',

  data () {
    return {

      fields: [
        {
          field: 'menuId',
          name: '菜单ID'
        },
        {
          field: 'menuName',
          name: '菜单名称'
        },
        {
          field: 'parentMenuId',
          name: '父菜单ID'
        },
        {
          field: 'menuUrl',
          name: '菜单地址'
        },
        {
          field: 'sort',
          name: '排序'
        },
        {
          field: 'visible',
          name: '是否首页',
          type: 'select',
          codeType: 'yesOrNo'
        }
      ],

      btns: [
        {
          title: '菜单复制',
          icon: 'icon-fuzhi',
          click: function (rows, handle) {
            if (rows.length === 1) {
              const row = rows[0]
              const tmpRow = JSON.parse(JSON.stringify(row))
              handle.editForm = tmpRow
              handle.action = 'save'
              handle.isModal = true
            } else {
              alert('请选择一个菜单')
            }
          }
        }
      ]
    }
  }
}

</script>
<style scoped>
</style>
