
import Vue from 'vue'
import Vuex from 'vuex'
import axios from 'axios'

Vue.use(Vuex)

const debug = process.env.NODE_ENV !== 'production'

export default new Vuex.Store({
  state: {
    user: {
      isLogin: false
    },
    cache: {
      tabs: [],
      menus: []
    }
  },

  mutations: {
    setIsLogin (state, isLogin) {
      state.user.isLogin = isLogin
    },

    setTabs (state, tabs) {
      state.cache.tabs = tabs
    },

    pushTab (state, tab) {
      state.cache.tabs.push(tab)
    },

    setMenus (state, menus) {
      state.cache.menus = menus
    },

    pushMenu (state, menu) {
      state.cache.menus.push(menu)
    },

    changeTabStatus (state, opts) {
      const index = opts.index
      const status = opts.status
      state.cache.tabs[index].selected = status
    },

    changeMenuStatus (state, opts) {
      const index = opts.index
      const status = opts.status
      state.cache.menus[index].selected = status
    }
  },

  actions: {
    initMenus () {
      axios.post()
    }
  },

  strict: debug
})
