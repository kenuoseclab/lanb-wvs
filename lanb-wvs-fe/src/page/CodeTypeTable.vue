<template>
  <baseTable :fields="fields" baseURL="/api/codeType"></baseTable>
</template>

<script>
export default {

  name: 'codeTypeTable',

  data () {
    return {

      fields: [
        {
          field: 'codeTypeId',
          name: '代码类型ID',
          hidden: true
        },
        {
          field: 'codeTypeName',
          name: '代码类型名'
        }
      ]
    }
  },

  methods: {}
}

</script>
<style scoped>
</style>
