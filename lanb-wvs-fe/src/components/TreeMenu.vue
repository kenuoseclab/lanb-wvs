<template>
  <ul class="menu">
    <li
      :key="index"
      v-for="(item, index) in folder"
      :class="{'menu__item': true, 'menu__item--selected': item.children === null && item.checked}"
      @click.stop="changeMenu(item)"
      @mouseenter="item.checked = true"
      @mouseout="item.checked = false"
    >
      {{item.text}}
      <tree-menu
        v-if="item.children && item.children != null"
        :folder="item.children"
        :callback="callback"
      ></tree-menu>
    </li>
  </ul>
</template>

<script>
export default {

  name: 'treeMenu',

  props: {

    folder: {
      type: Array,
      default: function () {
        return []
      }
    },

    callback: {
      type: Function,
      default: function (menu) { }
    }
  },

  methods: {
    changeMenu (menu, list) {
      if (menu.children !== null) {
        return
      }
      // if (typeof (list) === 'undefined') {
      //   list = this.folder
      // }
      // for (let i = 0; i < list.length; i++) {
      //   const item = list[i]
      //   item.checked = false
      //   if (item.children != null) {
      //     this.changeMenu(menu, item.children)
      //   }
      // }
      // menu.checked = true
      const tmpMenu = {
        title: menu.text,
        selected: true,
        component: menu.attributes.menuUrl
      }
      this.callback(tmpMenu)
    }
  }
}

</script>
<style scoped>
</style>
