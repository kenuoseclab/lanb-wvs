<template>
  <baseTable :fields="fields" baseURL="/api/taskAttr"></baseTable>
</template>

<script>
export default {

  name: 'taskAttrTable',

  data () {
    return {

      fields: [
        {
          field: 'taskAattrId',
          name: '任务属性ID',
          hidden: true
        },
        {
          field: 'taskAttrKey',
          name: '任务属性名'
        },
        {
          field: 'taskAttrValue',
          name: '任务属性值'
        },
        {
          field: 'createTime',
          name: '创建时间',
          type: 'date'
        },
        {
          field: 'createUserId',
          name: '创建人'
        },
        {
          field: 'updateTime',
          name: '更新时间',
          type: 'date'
        },
        {
          field: 'updateUserId',
          name: '更新人'
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
