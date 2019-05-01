<template>
  <div>
    <div class="row">
      <div class="col-3">
        <tree-menu class="panel" :folder="treeMenus"></tree-menu>
      </div>
      <div class="col-9">
        <base-form></base-form>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data () {
    return {
      // 树菜单
      treeMenus: []
    }
  },

  methods: {},

  created () {
    this.$post('/api/menu/getTreeMenu', {}).then(data => {
      const rows = data
      const tmpMenus = rows
      this.treeMenus = tmpMenus
    }).catch(error => {
      console.log(error)
    })
  }
}

</script>
<style scoped>
#tree-menu {
  width: 200px;
}
</style>
