<template>
  <ul class="menu">
    <li
      :key="index"
      v-for="(menu, index) in menus"
      :class="{'menu__item': true, 'menu__item--selected': menu.selected}"
      @click="changeMenu(menu)"
    >{{menu.title}}</li>
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
