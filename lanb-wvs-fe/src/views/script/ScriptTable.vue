<template>
  <baseTable :fields="fields" baseURL="/api/script"></baseTable>
</template>

<script>
export default {
  name: 'scriptTable',

  data () {
    return {

      fields: [
        {
          field: 'scriptId',
          name: '脚本ID',
          hidden: true
        },
        {
          field: 'scriptName',
          name: '脚本名称'
        },
        {
          field: 'scriptContent',
          name: '脚本内容'
        },
        {
          field: 'createTime',
          name: '创建时间',
          type: 'date'
        }
      ]
    }
  }
}

</script>
<style scoped>
</style>
