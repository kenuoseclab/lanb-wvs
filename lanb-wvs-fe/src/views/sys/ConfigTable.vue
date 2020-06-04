<template>
  <baseTable :fields="fields" baseURL="/api/config"></baseTable>
</template>

<script>
export default {

  name: 'configTable',

  data () {
    return {

      fields: [
        {
          field: 'configId',
          name: '配置ID',
          hidden: true
        },
        {
          field: 'configName',
          name: '配置名'
        },
        {
          field: 'configValue',
          name: '配置值'
        },
        {
          field: 'createDate',
          name: '创建时间',
          type: 'time'
        },
        {
          field: 'sortNo',
          name: '排序'
        },
        {
          field: 'remark',
          name: '备注'
        }
      ]
    }
  },

  methods: {}
}

</script>
<style scoped>
</style>
