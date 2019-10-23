<template>
  <div v-show="wrapperShow">
    <div ref="modal" class="modal" :style="{width: width, height: height, transform: transform}">
      <transition name="bounce" @after-enter="afterEnter" @after-leave="afterLeave" @before-enter="beforeEnter">
        <div v-if="show" class="modal__inner panel" :style="{width: '100%', height: '100%'}">
          <!-- <h1 v-if="title != ''" class="panel__title--border">{{ title }}</h1> -->
          <h1 v-if="title != ''">{{ title }}</h1>
          <slot name="header"></slot>
          <div class="panel__body" style="background: #f5f5f5;">
            <slot></slot>
          </div>
          <div class="button-group" style="background: #fff;">
            <a class="button" @click="ok">确定</a>
            <a @click="close" class="button">取消</a>
          </div>
        </div>
      </transition>
    </div>
    <div class="mask" v-if="show"></div>
  </div>
</template>

<script>
export default {
  props: {
    show: {
      type: Boolean,
      default: false
    },

    ok: {
      type: Function,
      default: function () { }
    },

    height: {
      type: String,
      default: '500px'
    },

    width: {
      type: String,
      default: '600px'
    },

    title: {
      type: String,
      default: ''
    }
  },
  data () {
    return {
      wrapperShow: false,
      transform: ''
    }
  },

  methods: {
    close () {
      this.$emit('update:show', false)
    },

    afterLeave () {
      this.wrapperShow = false
    },

    beforeEnter () {
      this.wrapperShow = true
    },
    afterEnter () {
      const modal = this.$refs.modal
      const width = modal.offsetWidth
      const height = modal.offsetHeight
      // 如果不是是偶数,则加0.5px
      if (width % 2 !== 0) {
        this.transformX = 'calc(-50% + 0.5px)'
      } else {
        this.transformX = '-50%'
      }

      if (height % 2 !== 0) {
        this.transformY = 'calc(-50% + 0.5px)'
      } else {
        this.transformY = '-50%'
      }

      this.transform = 'translate(' + this.transformX + ',' + this.transformY + ')'
    }
  }
}

</script>
<style lang='scss' scoped>
</style>
