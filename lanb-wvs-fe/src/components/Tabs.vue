<template>
  <div class="tab">
    <a
      :key="index"
      v-for="(tab, index) in tabs"
      :class="{'tab__item': true, 'tab__item--selected': tab.selected}"
      @click="changeTab(tab, index)"
      @contextmenu.prevent="contextmenu($event, tab)"
    >{{tab.title}}</a>

    <div
      v-if="isContextmenu"
      class="contextmenu"
      :style="{left: contextmenuPostion.x, top: contextmenuPostion.y}"
    >
      <ul class="menu">
        <li class="menu__item" @click="refresh($event)">刷新</li>
        <li class="menu__item" @click="close">关闭</li>
        <li class="menu__item" @click="closeOther">关闭其他</li>
        <li class="menu__item" @click="closeAll">关闭所有</li>
      </ul>
    </div>
    <div class="mask" @click="isContextmenu = false"></div>
  </div>
</template>

<script>
export default {

  name: 'tabs',

  props: {

    tabs: {
      type: Array,
      default: () => {
        return []
      }
    },

    callback: {
      type: Function,
      default: function () {
        console.log('default callback')
      }
    }
  },

  data () {
    return {
      isContextmenu: false,
      contextmenuPostion: {
        x: '0px',
        y: '0px'
      },
      contextmenuTab: null
    }
  },

  methods: {

    contextmenu (event, tab) {
      this.contextmenuTab = tab
      const x = event.clientX
      const y = event.clientY

      this.contextmenuPostion.x = x + 'px'
      this.contextmenuPostion.y = y + 'px'

      this.isContextmenu = true
    },

    changeTab (tab, index) {
      for (let i = 0; i < this.tabs.length; i++) {
        this.tabs[i].selected = false
      }
      tab.selected = true
      this.callback(tab, index)
    },

    refresh (event) {
      this.isContextmenu = false
      console.log(this)
      console.log(this.contextmenuTab)
    },

    close () {
      this.isContextmenu = false
      if (this.contextmenuTab.isIndex) {
        return
      }
      const index = this.tabs.indexOf(this.contextmenuTab)
      const selected = this.contextmenuTab.selected
      if (index > -1) {
        this.tabs.splice(index, 1)
      }
      let tab = null
      if (selected && index < this.tabs.length) {
        tab = this.tabs[index]
        tab.selected = true
      } else if (selected && (index - 1) >= 0) {
        tab = this.tabs[index - 1]
        tab.selected = true
      }
      if (tab != null) {
        this.callback(tab)
      }
    },

    closeAll () {
      this.$emit('update:tabs', [{
        title: '首页',
        selected: true,
        isIndex: true,
        component: 'dashboard'
      }])
      this.isContextmenu = false
    },

    closeOther () {
      this.isContextmenu = false
    }
  }
}

</script>
<style scoped>
.contextmenu {
  position: absolute;
  top: 0;
  left: 0;
  background-color: #ffffff;
  border-radius: 5px;
  border: 1px solid #dcdee2;
  z-index: 1001;
}

.contextmenu .menu {
  border: 0px;
}

.contextmenu + .mask {
  width: 100%;
  height: 100%;
  position: absolute;
  top: 0;
  left: 0;
  background-color: rgba(0, 0, 0, 0);
  z-index: 1000;
}
</style>
