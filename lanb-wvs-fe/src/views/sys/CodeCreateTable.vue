<template>
  <div>
    <base-table baseURL="/api/creater" :api="api" :isDefaultBtn="false">
      <base-table-column field="tableName" name="name"></base-table-column>
      <base-table-column field="tableComment" name="表注释"></base-table-column>
      <base-table-column field="action" name="操作"></base-table-column>

      <template slot="action">
        <el-button size="small" type="primary">生成</el-button>
      </template>
    </base-table>
  </div>
</template>

<script>
export default {
  data () {
    return {
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
