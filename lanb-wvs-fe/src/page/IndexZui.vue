<template>
  <div class="wapper">
    <div class="container">
      <div class="header">
        <div class="header-logo">LANB FE</div>
        <ul class="nav-bar">
          <li
            v-for="(item, index) in menus"
            :key="index"
            :class="{'nav-bar__item': true, 'nav-bar__item--selected': item.checked}"
            @click.stop="menuCallback(item)"
          >{{item.text}}</li>
        </ul>
        <div class="header-bar">
          <a
            href="https://github.com/colodoo/lanb-wvs/issues"
            target="_blank"
            class="header-bar__item"
          >反馈</a>
          <a href="https://github.com/colodoo/lanb-wvs" target="_blank" class="header-bar__item">帮助</a>
          <router-link class="header-bar__item" to="/login">会员</router-link>
        </div>
      </div>
      <div class="sub-header">
        <div></div>
        <ul class="nav-bar">
          <li
            v-for="(item, index) in subMenus"
            :key="index"
            :class="{'nav-bar__item': true, 'nav-bar__item--selected': item.checked}"
            @click.stop="subMenuCallback(item)"
          >{{item.text}}</li>
        </ul>
        <div class="sub-header__item" style="margin-right: 20px;">
          <a class="button">刷新</a>
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

      // 根菜单
      menus: [],

      // 子菜单
      subMenus: [],

      keepAlive: false

    }
  },

  methods: {
    menuCallback (menu) {
      if (menu.attributes.menuUrl !== '') {
        this.currPage = menu.attributes.menuUrl
        this.subMenus = []
      } else if (menu.children !== null) {
        this.subMenus = menu.children
      }
      for (let index = 0; index < this.subMenus.length; index++) {
        const element = this.subMenus[index]
        element.checked = false
      }
      for (let index = 0; index < this.menus.length; index++) {
        const element = this.menus[index]
        element.checked = false
      }
      menu.checked = true
    },

    subMenuCallback (menu) {
      if (menu.attributes.menuUrl !== '') {
        this.currPage = menu.attributes.menuUrl
      } else if (menu.children !== null) {
        this.subMenus = menu.children
      }
      for (let index = 0; index < this.subMenus.length; index++) {
        const element = this.subMenus[index]
        element.checked = false
      }
      menu.checked = true
    }
  },

  created () {
    this.$post('/api/menu/getTreeMenu', {}).then(data => {
      const rows = data
      const tmpMenus = rows
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

.container {
  height: 100%;
  flex-grow: 1;
  display: flex;
  flex-direction: column;
}

.container .header {
  height: 50px;
  min-height: 50px;
  max-height: 50px;
  background: #1183fb linear-gradient(-90deg, #0a48d1 0, #1183fb 100%);
  box-shadow: 0 1px 4px rgba(0, 21, 41, 0.08);
  display: flex;
  justify-content: space-between;
}

.header-logo {
  color: #ffffff;
  display: flex;
  align-items: center;
  justify-content: center;
  text-align: center;
  margin-left: 40px;
  font-size: 20px;
  font-weight: 400;
}

.header-bar {
  display: flex;
  flex-direction: row;
  align-items: center;
  justify-content: center;
  text-align: center;
  margin-right: 20px;
}

.header-bar__item {
  color: #ffffff;
  padding: 12px;
  cursor: pointer;
}

.header-bar__item:hover {
  background-color: #1861d5;
}

.sub-header {
  height: 50px;
  min-height: 50px;
  max-height: 50px;
  background: #ffffff;
  display: flex;
  justify-content: space-between;
}

.sub-header .sub-header__item {
  display: flex;
  align-items: center;
  justify-content: center;
  text-align: center;
}

.container .main {
  background-color: #f5f5f5;
  flex-grow: 1;
  overflow-y: auto;
  overflow-x: hidden;
}

.main .main-container {
  padding: 16px;
}

/* reset */
.menu .menu__item {
  line-height: 40px;
}

.menu-tip {
  position: absolute;
  bottom: 0px;
  left: 0px;
}

.nav-bar {
  display: flex;
  align-items: center;
  justify-content: center;
  text-align: center;
}

.nav-bar .nav-bar__item {
  transition: 0.4s cubic-bezier(0.175, 0.885, 0.32, 1);
  float: left;
  list-style: none;
  color: #ffffff;
  padding: 16px;
  cursor: pointer;
}

.nav-bar .divider {
  display: block;
  width: 2px;
  height: 20px;
  margin: 15px;
  background: rgba(255, 255, 255, 0.4);
}

.nav-bar .nav-bar__item:hover {
  background-color: rgba(0, 0, 0, 0.15);
}

.nav-bar .nav-bar__item--selected {
  background-color: rgba(0, 0, 0, 0.1);
  font-weight: 700;
}

.sub-header .nav-bar__item {
  color: #3c4353;
  padding: 8px 12px;
  border-radius: 4px;
}

.sub-header .nav-bar__item:hover {
  color: #3c4353;
  background-color: rgba(0, 0, 0, 0.075);
}
</style>
