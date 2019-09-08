import Vue from 'vue'
import DialogComponent from './src/dialog.vue'

Vue.prototype.$dialog = function (options) {
  const EZDialog = Vue.extend(DialogComponent)
  const component = new EZDialog({
    data: options
  }).$mount()
  document.querySelector('body').appendChild(component.$el)
}
