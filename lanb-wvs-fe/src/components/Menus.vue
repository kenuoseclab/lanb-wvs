<template>
  <ul class="menu">
    <!-- <li class="menu__item">系统管理</li>
    <li class="menu__item menu__item--selected">系统管理</li>
    <li class="menu__item">系统管理</li>
    <li class="menu__item">系统管理</li>-->
    <li
      :key="index"
      v-for="(menu, index) in menus"
      :class="{'menu__item': true, 'menu__item--selected': menu.selected}"
      @click="changeMenu(menu)"
    >{{menu.title}}</li>
    <!-- <a style="margin: 16px;" href="#" class="button">添加标签</a> -->
  </ul>
</template>

<script>
export default {

  name: 'menus',

  props: {

    menus: {
      type: Array,
      default: () => {
        return []
      }
    },

    callback: {
      type: Function,
      default: function (menu) {
        console.log('default callback')
      }
    }
  },

  methods: {
    changeMenu (menu) {
      for (let i = 0; i < this.menus.length; i++) {
        this.menus[i].selected = false
      }
      menu.selected = true
      this.callback(menu)
    }
  }
}

</script>
<style scoped>
</style>
