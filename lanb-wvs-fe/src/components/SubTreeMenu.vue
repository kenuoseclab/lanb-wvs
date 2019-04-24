<template>
  <ul class="sub-menu">
    <li
      :key="index"
      v-for="(item, index) in folder"
      class="sub-menu__item"
      :class="{'menu__item': true, 'sub-menu__item--selected': item.checked}"
      @click.stop="changeMenu(item)"
    >
      {{item.text}}
      <tree-menu v-if="item.children && item.children != null" :folder="item.children"></tree-menu>
    </li>
  </ul>
</template>

<script>
export default {

  name: 'subTreeMenu',

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
    changeMenu (menu, event) {
      for (let i = 0; i < this.folder.length; i++) {
        this.folder[i].checked = false
      }
      menu.checked = true
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
.hidden {
  display: none;
}
</style>
