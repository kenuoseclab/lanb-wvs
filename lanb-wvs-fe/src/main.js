// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import './register.js'
import store from './store'
import './api/requests'
// iviewui
// import ViewUI from 'view-design'
// import 'view-design/dist/styles/iview.css'
// Vue.use(ViewUI)
// elementui
import ElementUI from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css'
Vue.use(ElementUI)

Vue.config.productionTip = false

// 问题处理
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
// 问题处理

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  store,
  components: { App },
  template: '<App/>'
})
