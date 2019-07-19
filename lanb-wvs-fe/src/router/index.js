import Vue from 'vue'
import Router from 'vue-router'
import IndexZui from '@/page/IndexZui'
import SystemRouter from './modules/system'
import BugRouter from './modules/bug'
import TaskRouter from './modules/task'
import AssetRouter from './modules/asset'
import ScriptRouter from './modules/script'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      redirect: '/main'
    },
    {
      path: '/main',
      name: 'Main',
      redirect: '/main/dashboard',
      component: IndexZui,
      children: [
        // 首页
        {
          path: 'dashboard',
          components: {
            content: require('@/page/Dashboard').default
          }
        },
        {
          path: '*',
          components: {
            content: require('@/page/page/BlankPage.vue').default
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

    {
      path: '/login',
      name: 'Login',
      component: require('@/page/Login').default
    },
    {
      path: '/index-ice',
      name: 'IndexIce',
      component: require('@/page/IndexIce.vue').default
    },
    {
      path: '/index-zui',
      name: 'IndexZui',
      component: require('@/page/IndexZui.vue').default
    },
    {
      path: '*',
      name: 'BlankPage',
      component: require('@/page/page/BlankPage.vue').default
    }
  ]
})
