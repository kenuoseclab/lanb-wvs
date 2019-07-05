
import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

const debug = process.env.NODE_ENV !== 'production'

export default new Vuex.Store({
  state: {
    user: {
      isLogin: false
    },
    cache: {
      tabs: [],
      menus: [],
      codeInfo: []
    }
  },

  mutations: {

    SET_CODE_INFO (state, codeInfo) {
      state.cache.codeInfo = codeInfo
    },

    SET_IS_LOGIN (state, isLogin) {
      state.user.isLogin = isLogin
    },

    SET_TABS (state, tabs) {
      state.cache.tabs = tabs
    },

    PUSH_TAB (state, tab) {
      state.cache.tabs.push(tab)
    },

    SET_MENUS (state, menus) {
      state.cache.menus = menus
    },

    PUSH_MENU (state, menu) {
      state.cache.menus.push(menu)
    },

    CHANGE_TAB_STATUS (state, opts) {
      const index = opts.index
      const status = opts.status
      state.cache.tabs[index].selected = status
    },

    CHANGE_MENU_STATUS (state, opts) {
      const index = opts.index
      const status = opts.status
      state.cache.menus[index].selected = status
    }
  },

  actions: {},

  strict: debug
})
