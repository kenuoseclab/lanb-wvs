<template>
  <div class="app__inner">
    <!-- <div class="modal panel"></div>
    <div class="mask"></div>-->

    <!-- 头部 -->
    <header>
      <div class="header__logo">{{systemName}}</div>
      <div class="menu-bar">
        <a href="#" class="menu-bar__item">会员</a>
        <a href="#" class="menu-bar__item">帮助</a>
        <a href="#" class="menu-bar__item">反馈</a>
      </div>
    </header>

    <!-- 主体 -->
    <main>
      <!-- 左侧菜单 -->
      <div class="main__left sider">

        <menus :menus="menus" :callback="menuCallback"></menus>

        <!-- <ul class="menu">
        <li class="menu__item">
          系统管理
          <ul class="sub-menu">
            <li class="sub-menu__item">系统参数</li>
            <li class="sub-menu__item">
              代码设置
              <ul class="sub-menu">
                <li class="sub-menu__item">代码类别</li>
                <li class="sub-menu__item">代码信息</li>
              </ul>
            </li>
          </ul>
        </li>
        </ul>-->
      </div>

      <div class="main__right">
        <!-- 选项卡 -->
        <tabs :tabs="tabs" :callback="tabCallback"></tabs>

        <!-- 内容主体 -->
        <div class="content">
          <!-- <button @click="refresh">刷新</button> -->
          <keep-alive>
            <component ref="currentPage" v-if="keepAlive" :is="currentPage"></component>
          </keep-alive>
          <component ref="currentPage" v-if="!keepAlive" :is="currentPage"></component>
        </div>
      </div>
    </main>
  </div>
</template>

<script>
import axios from 'axios'

const tabs = [{
  title: '首页',
  selected: true,
  isIndex: true,
  component: 'dashboard'
}]

// const menus = [
//   {
//     title: '首页',
//     selected: true,
//     component: 'dashboard'
//   }, {
//     title: '表格页面',
//     selected: false,
//     component: 'test-table'
//   }, {
//     title: '任务管理',
//     selected: false,
//     component: 'task-table'
//   }, {
//     title: '漏洞管理',
//     selected: false,
//     component: 'bug-table'
//   }, {
//     title: '漏洞等級管理',
//     selected: false,
//     component: 'bug-level-table'
//   }, {
//     title: '资产管理',
//     selected: false,
//     component: 'asset-table'
//   }, {
//     title: '空页面',
//     selected: false,
//     component: 'blank-page'
//   }, {
//     title: '任务属性管理',
//     selected: false,
//     component: 'task-attr-table'
//   }]

const menus = []

export default {
  name: 'index',

  data () {
    return {

      systemName: 'LANB FE',

      keepAlive: true,

      // 选项卡
      tabs: tabs,

      // 菜单
      menus: menus,

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
    }
  },

  methods: {

    refresh () {
      this.keepAlive = false
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
    }
  },

  created () {
    axios.post('/api/menu/getRootMenuList').then(response => {
      const rows = response.data.rows
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
      this.menus = this.menus.concat(tmpMenus)
    })
  }
}
</script>

<style scoped>
.app__inner {
  height: 100vh;
  display: flex;
  flex-direction: column;
}
</style>
