<template>
  <div>
    <BaseTable :fields="fields" baseURL="/api/creater" :api="api" :isDefaultBtn="false"></BaseTable>
  </div>
</template>

<script>
export default {
  data () {
    return {
      fields: [
        {
          field: 'tableName',
          name: '表名'
        },
        {
          field: 'tableComment',
          name: '表注释'
        },
        {
          name: '操作',
          field: 'action',
          formatter: function (val, row) {
            return '<a class="button">生成</a>'
          }
        }
      ],
      api: {
        'save': '/save',
        'delete': '/delete',
        'update': '/update',
        'query': '/getTables'
      }
    }
  },

  methods: {}
}

</script>
<style lang='scss' scoped>
</style>
