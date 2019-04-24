<template>
  <div class="app__inner">
    <!-- 头部 -->
    <header>
      <div class="header__logo">{{systemName}}</div>
      <div class="menu-bar">
        <a class="menu-bar__item">会员</a>
        <a href="https://github.com/colodoo/lanb-wvs" target="_blank" class="menu-bar__item">帮助</a>
        <a
          href="https://github.com/colodoo/lanb-wvs/issues"
          target="_blank"
          class="menu-bar__item"
        >反馈</a>
      </div>
    </header>

    <!-- 主体 -->
    <main>
      <transition name="expand">
        <!-- 左侧菜单 -->
        <div class="main__left sider" v-if="showSider">
          <!-- 列表菜单 -->
          <!-- <menus :menus.sync="menus" :callback="menuCallback"></menus> -->
          <!-- 树形菜单 -->
          <tree-menu :folder="treeMenus" :callback="menuCallback"></tree-menu>
        </div>
      </transition>

      <div class="main__right">
        <!-- 选项卡 -->
        <tabs :tabs.sync="tabs" :callback="tabCallback" :refreshCallback="refreshCallback"></tabs>

        <!-- 内容主体 -->
        <div class="content">
          <button @click="showSider = !showSider">showSider</button>
          <!-- is特性方式 -->
          <keep-alive>
            <component ref="currentPage" v-if="keepAlive && hackReset" :is="currentPage"></component>
          </keep-alive>
          <component ref="currentPage" v-if="!keepAlive && hackReset" :is="currentPage"></component>
          <!-- 路由方式 -->
          <!-- <keep-alive>
            <router-view v-if="keepAlive" name="content"></router-view>
          </keep-alive>
          <router-view v-if="!keepAlive" name="content"></router-view>-->
        </div>
      </div>
    </main>
  </div>
</template>

<script>
const tabs = [{
  title: '首页',
  selected: true,
  isIndex: true,
  component: 'dashboard'
}]

const menus = []

export default {
  name: 'index',

  data () {
    return {

      showSider: true,

      systemName: 'LANB FE',

      // 是否缓存组件
      keepAlive: true,

      // 选项卡
      tabs: tabs,

      // 菜单
      menus: menus,

      // 树菜单
      treeMenus: [],

      hackReset: true,

      // 菜单点击回调
      menuCallback: (menu) => {
        const component = menu.component
        const tabComponents = this.getTabComponents()

        // 选项卡中和菜单匹配的项要选中
        for (let i = 0; i < this.tabs.length; i++) {
          const tab = this.tabs[i]
          if (tab.component === component) {
            tab.selected = true
          } else {
            tab.selected = false
          }
        }
        if (tabComponents.indexOf(menu.component) > -1) {
          return
        }
        this.tabs.push(menu)
      },

      // 选项卡点击回调
      tabCallback: (tab) => {
        // 菜单中和该选项卡匹配的项要选中
        const component = tab.component
        for (let i = 0; i < this.menus.length; i++) {
          const menu = this.menus[i]
          if (menu.component === component) {
            menu.selected = true
          } else {
            menu.selected = false
          }
        }
      },

      refreshCallback: (tab) => {
        this.refresh(tab.component)
      }
    }
  },

  computed: {
    currentPage () {
      for (let i = 0; i < this.tabs.length; i++) {
        const tab = this.tabs[i]
        if (tab.selected) {
          return tab.component
        }
      }
    },

    keepAliveCache () {
      return this.$refs.currentPage.$vnode.parent.child.cache
    }
  },

  methods: {

    // 新刷组件
    refresh (component) {
      // 清除该组件缓存
      const cid = this.$refs.currentPage.$vnode.componentOptions.Ctor.cid
      const componentKey = cid + '::' + component
      for (let key in this.keepAliveCache) {
        if (key.indexOf(componentKey) !== -1) {
          delete this.keepAliveCache[key]
        }
      }
      // 强制刷新dom
      this.hackReset = false
      this.$nextTick(() => {
        this.hackReset = true
      })
    },

    getTabComponents () {
      this.keepAlive = true
      const tmpList = []
      for (let i = 0; i < this.tabs.length; i++) {
        tmpList.push(this.tabs[i].component)
      }
      return tmpList
    },
    getMenuComponents () {
      this.keepAlive = true
      const tmpList = []
      for (let i = 0; i < this.menus.length; i++) {
        tmpList.push(this.menus[i].component)
      }
      return tmpList
    },

    initMenus () {
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

      this.$post('/api/menu/getTreeMenu', {}).then(data => {
        const rows = data
        const tmpMenus = rows
        this.treeMenus = tmpMenus
      }).catch(error => {
        console.log(error)
      })
    }
  },

  created () {
    if (this.menus.length === 0) {
      this.initMenus()
    }
  }
}
</script>

<style scoped>
.app__inner {
  height: 100vh;
  display: flex;
  flex-direction: column;
}
.expand-enter-active,
.expand-leave-active {
  transition: all 0.5s;
}
.expand-enter,
.expand-leave-to {
  width: 0px;
  min-width: 0px;
  max-width: 0px;
}
</style>
