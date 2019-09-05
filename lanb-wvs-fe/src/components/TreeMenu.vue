<template>
  <ul class="menu">
    <li
      :key="index"
      v-for="(item, index) in folder"
      :class="{'menu__item': true, 'menu__item--selected': item.selected}"
      @click.stop="changeMenu(item)"
      @mouseover="item.selected = true"
      @mouseout="item.selected = false"
    >
      <div
        :class="{'menu-item__body': true}"
        :style="paddingLeft"
      >{{item.text}}</div>
      <tree-menu
        v-if="item.children && item.children != null"
        :folder="item.children"
        :callback="callback"
        :level="level + 1"
      ></tree-menu>
    </li>
  </ul>
</template>

<script>
export default {

  name: 'treeMenu',

  props: {

    level: {
      type: Number,
      default: 0
    },

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

  computed: {
    paddingLeft () {
      return 'padding-left:' + (20 + (this.level * 10)) + 'px'
    }
  },

  methods: {

    hoverIn () {

    },

    changeMenu (menu, list) {
      // if (menu.children !== null) {
      //   return
      // }
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
        component: menu.attributes.menuUrl,
        item: menu
      }
      this.callback(tmpMenu)
    }
  }
}

</script>
<style scoped>
</style>
