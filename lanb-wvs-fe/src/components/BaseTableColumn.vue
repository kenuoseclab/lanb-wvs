<template>
  <span>
    <slot></slot>
  </span>
</template>

<script>
export default {

  name: 'baseTableColumn',

  props: {
    field: {
      type: String,
      default: null
    },
    name: {
      type: String,
      default: null
    },

    type: {
      type: String,
      default: null
    }
  },

  created () {
    this.$parent.$parent.fields.push(this.$props)
  },

  data () {
    return {
      rows: null
    }
  }

}

</script>
<style lang='scss' scoped>
</style>
