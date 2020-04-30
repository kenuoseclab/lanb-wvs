<template>
  <baseTable :fields="fields" baseURL="/api/taskAttr" :btns="btns"></baseTable>
</template>

<script>
export default {

  name: 'taskAttrTable',

  data () {
    return {

      fields: [
        {
          field: 'taskAttrId',
          name: '任务属性ID'
        },
        {
          field: 'taskId',
          name: '任务ID'
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
      ],

      btns: [
        {
          title: '任务属性配置',
          icon: 'icon-shezhi',
          click: () => {
            this.$alert('暂未开发', '提示', {
              confirmButtonText: '确定'
            })
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
