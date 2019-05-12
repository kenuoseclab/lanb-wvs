// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import './register.js'
import store from './store'
import { post, fetch, patch, put } from './api/requests'

Vue.config.productionTip = false

Vue.prototype.$post = post
Vue.prototype.$fetch = fetch
Vue.prototype.$patch = patch
Vue.prototype.$put = put

Vue.config.errorHandler = function (err, vm, info) {
  console.log(err)
  console.log(vm)
  console.log(info)
}

Vue.config.warnHandler = function (msg, vm, trace) {
  console.log(msg)
  console.log(vm)
  console.log(trace)
  if (vm.currPage) {
    vm.currPage = 'blank-page'
    // router.push('/404')
  }
}

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  store,
  components: { App },
  template: '<App/>'
})
