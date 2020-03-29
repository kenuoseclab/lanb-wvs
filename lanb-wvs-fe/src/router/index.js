import Vue from 'vue'
import Router from 'vue-router'
import Index from '@/views/style/IndexZui'
import SystemRouter from './modules/system'
import BugRouter from './modules/bug'
import TaskRouter from './modules/task'
import AssetRouter from './modules/asset'
import ScriptRouter from './modules/script'
import ScanRouter from './modules/scan'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      redirect: '/main'
    },
    {
      path: '/main',
      name: 'main',
      redirect: '/main/dashboard',
      component: Index,
      children: [
        // 首页
        {
          name: 'dashboard',
          path: 'dashboard',
          components: {
            content: require('@/views/dashboard/Dashboard').default
          }
        },
        {
          name: 'blankPage',
          path: '*',
          components: {
            content: require('@/views/common/BlankPage.vue').default
          }
        }
      ]
    },

    // 自定义模块

    // 系统管理
    SystemRouter,
    // 漏洞管理
    BugRouter,
    // 任务管理
    TaskRouter,
    // 资产管理
    AssetRouter,
    // 脚本管理
    ScriptRouter,
    // 扫描管理
    ScanRouter,

    {
      path: '/login',
      name: 'login',
      component: require('@/views/Login').default
    },
    {
      path: '/index-ice',
      name: 'indexIce',
      component: require('@/views/style/IndexIce.vue').default
    },
    {
      path: '/index-zui',
      name: 'indexZui',
      component: Index
    },
    {
      path: '*',
      name: 'blankPage',
      component: require('@/views/common/BlankPage.vue').default
      // component: IndexZui,
      // children: [
      //   {
      //     path: '',
      //     components: {
      //       content: require('@/views/common/BlankPage.vue').default
      //     }
      //   }
      // ]
    }
  ]
})
