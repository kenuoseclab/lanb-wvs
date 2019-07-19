<template>
  <div class="wrapper">
    <div class="container">
      <div class="header">
        <div class="header-logo">LANB WVS</div>
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
          <a class="button" @click="refresh">刷新</a>
        </div>
      </div>
      <div class="main">
        <div class="main-container">
          <!-- 左侧选项卡 -->
          <!-- <ul class="left-tabs">
            <li class="tab-item tab-item--active">首页</li>
            <li class="tab-item">用户管理</li>
            <li class="tab-item">系统设置</li>
            <li class="tab-item">角色管理</li>
            <li class="tab-item">日志管理</li>
          </ul> -->

          <!-- 采用组件切换的模式 -->
          <template v-if="!isRouter">
            <keep-alive>
              <component ref="currPage" v-if="keepAlive && refreshFlag" :is="currPage"></component>
            </keep-alive>
            <component ref="currPage" v-if="!keepAlive && refreshFlag" :is="currPage"></component>
          </template>

          <!-- 采用路由方式 -->
          <template v-if="isRouter">
            <keep-alive>
              <router-view v-if="keepAlive && refreshFlag" name="content"></router-view>
            </keep-alive>
            <router-view v-if="!keepAlive && refreshFlag" name="content"></router-view>
          </template>
        </div>
      </div>
    </div>

    <!-- loading -->
    <loading
      :active.sync="loading.isLoading"
      :can-cancel="loading.canCancel"
      :on-cancel="loading.onCancel"
      :color="loading.color"
      :opacity="loading.opacity"
    ></loading>
  </div>
</template>

<script>
import Loading from 'vue-loading-overlay'
import 'vue-loading-overlay/dist/vue-loading.css'
export default {
  data () {
    return {

      currPage: 'dashboard',

      // 根菜单
      menus: [],

      // 子菜单
      subMenus: [],

      // 是否缓存组件
      keepAlive: false,

      // 刷新标记,用于强制刷新组件
      refreshFlag: true,

      // 加载组件
      loading: {
        isLoading: true,
        canCancel: true,
        onCancel: () => {
          this.show = true
        },
        color: 'rgb(0, 123, 255)'
      },

      // 是否路由方式控制功能页面
      isRouter: true

    }
  },

  methods: {
    menuCallback (menu) {
      if (menu.attributes.menuUrl !== '') {
        this.currPage = menu.attributes.menuUrl
        if (this.isRouter) {
          // 更换当前路由地址
          this.$router.push({ path: this.currPage })
        }
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
        // 更换当前页面
        this.currPage = menu.attributes.menuUrl
        if (this.isRouter) {
          // 更换当前路由地址
          this.$router.push({ path: this.currPage })
        }
      } else if (menu.children !== null) {
        this.subMenus = menu.children
      }
      for (let index = 0; index < this.subMenus.length; index++) {
        const element = this.subMenus[index]
        element.checked = false
      }
      menu.checked = true
    },

    refresh () {
      this.refreshFlag = false
      this.$nextTick(() => {
        this.refreshFlag = true
      })
    }
  },

  created () {
    this.$post('/api/menu/getTreeMenu', {}).then(data => {
      const rows = data
      const tmpMenus = rows
      this.menus = tmpMenus

      this.loading.isLoading = false
    }).catch(error => {
      console.log(error)
    })
  },

  components: {
    Loading
  }
}

</script>
<style scoped lang="scss">
.wrapper {
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
  background: #4398e0 linear-gradient(-90deg, #4398e0 0, #64aae8 100%);
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
  background-color: rgba(0, 0, 0, 0.15);
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

.left-tabs {
  position: absolute;
  left: 0px;
  background: #4398e0 linear-gradient(-90deg, #4398e0 0, #64aae8 100%);
  color: #ffffff;
  text-align: center;
  list-style: none;
  z-index: 10001;
  width: 50px;
  .tab-item {
    padding: 16px;
    color: #ffffff;
    cursor: pointer;
    &:hover {
      background-color: rgba(0, 0, 0, 0.15);
    }
  }
  .tab-item--active {
    background-color: rgba(0, 0, 0, 0.1);
  }
}
</style>
