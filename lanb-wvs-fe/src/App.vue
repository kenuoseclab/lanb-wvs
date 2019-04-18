<template>
  <div id="app">
    <router-view/>
  </div>
</template>

<script>
export default {
  name: 'App',

  watch: {
    // 如果路由有变化，会再次执行该方法
    '$route': 'routerWatch'
  },

  methods: {
    routerWatch () {
      const state = this.$store.state
      const user = state.user
      if (!user.isLogin) {
        this.$router.push({ path: '/login' })
      }
    }
  },

  created () {
    const state = this.$store.state
    const user = state.user
    if (!user.isLogin) {
      this.$router.push({ path: '/login' })
    }
  }
}
</script>

<style>
@import url(./assets/all.css);
@import url(./assets/layout.css);
@import url(./assets/modal.css);
@import url(./assets/form.css);
@import url(./assets/button.css);
@import url(./assets/menu.css);
@import url(./assets/tab.css);
@import url(./assets/menu-bar.css);
@import url(./assets/panel.css);
@import url(./assets/table.css);
@import url(./assets/input.css);
@import url(./assets/color.css);
#app {
  height: 100vh;
  display: flex;
  flex-direction: column;
}
</style>
