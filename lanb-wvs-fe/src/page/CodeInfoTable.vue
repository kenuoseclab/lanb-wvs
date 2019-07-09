<template>
  <baseTable :fields="fields" baseURL="/api/codeInfo"></baseTable>
</template>

<script>
export default {

  name: 'codeInfoTable',

  data () {
    return {

      fields: [
        {
          field: 'codeInfoId',
          name: '代码信息ID',
          hidden: true
        },
        {
          field: 'codeTypeId',
          name: '代码类型ID'
        },
        {
          field: 'codeTypeName',
          name: '代码类型名称'
        },
        {
          field: 'name',
          name: '代码名'
        },
        {
          field: 'value',
          name: '代码值'
        },
        {
          field: 'sort',
          name: '排序'
        }
      ]
    }
  },

  methods: {}
}

</script>
<style scoped>
</style>
