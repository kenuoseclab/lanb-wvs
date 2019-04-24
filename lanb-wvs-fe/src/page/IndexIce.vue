<template>
  <div class="wapper">
    <div class="aside">
      <div class="logo">LANB FE</div>
      <menus :menus.sync="menus" :callback="menuCallback"></menus>
    </div>
    <div class="right">
      <div class="header">
        <div class="header-bar">
          <a class="header-bar__item">反馈</a>
          <a class="header-bar__item">帮助</a>
          <a class="header-bar__item">会员</a>
        </div>
      </div>
      <div class="main">
        <div class="main-container">
          <keep-alive>
            <component ref="currPage" v-if="keepAlive" :is="currPage"></component>
          </keep-alive>
          <component ref="currPage" v-if="!keepAlive" :is="currPage"></component>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data () {
    return {

      currPage: 'dashboard',

      menus: [],

      keepAlive: false

    }
  },

  methods: {
    menuCallback (menu) {
      if (menu.component !== '') {
        this.currPage = menu.component
      }
    }
  },

  created () {
    this.$post('/api/menu/query', {}).then(data => {
      const rows = data
      const tmpMenus = []
      for (let i = 0; i < rows.length; i++) {
        const row = rows[i]
        let selected = false
        if (row.visible === 1) {
          selected = true
        }
        tmpMenus.push({
          title: row.menuName,
          selected: selected,
          component: row.menuUrl
        })
      }
      this.menus = tmpMenus
    }).catch(error => {
      console.log(error)
    })
  }
}

</script>
<style scoped>
.wapper {
  height: 100vh;
  width: 100%;
  display: flex;
  flex-direction: row;
}

.aside {
  width: 240px;
  min-width: 240px;
  max-width: 240px;
  background-color: #ffffff;
  height: 100%;
  display: flex;
  flex-direction: column;
}

.aside .logo {
  height: 62px;
  line-height: 62px;
  text-align: center;
  border-bottom: 1px solid rgb(245, 245, 245);
}

.aside .menu {
  flex-grow: 1;
  /* overflow-y: auto; */
  /* overflow-x: hidden; */
}

.right {
  height: 100%;
  flex-grow: 1;
  display: flex;
  flex-direction: column;
}

.right .header {
  height: 62px;
  min-height: 62px;
  max-height: 62px;
  background-color: rgb(68, 126, 255);
  box-shadow: 0 1px 4px rgba(0, 21, 41, 0.08);
  display: flex;
  justify-content: flex-end;
}

.header-bar {
  display: flex;
  flex-direction: row;
  align-items: center;
  justify-content: center;
  text-align: center;
}

.header-bar__item {
  color: #ffffff;
  padding: 12px;
  cursor: pointer;
}

.header-bar__item:hover {
  background-color: #1861d5;
}

.right .main {
  background-color: #f5f5f5;
  flex-grow: 1;
  overflow-y: auto;
  overflow-x: hidden;
}

.main .main-container {
  padding: 20px;
}

/* reset */
.menu .menu__item {
  line-height: 40px;
}
</style>
