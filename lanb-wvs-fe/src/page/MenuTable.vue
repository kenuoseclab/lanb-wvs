<template>
  <baseTable :fields="fields" baseURL="/api/menu"></baseTable>
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
          name: '是否可见',
          type: 'select',
          codeType: 'yesOrNo'
        }
      ]
    }
  },

  methods: {},

  created () {
    // console.log(this.$store)
  }
}

</script>
<style scoped>
</style>
