<template>
  <div>
    <div class="dialog">
      <transition name="bounce" @after-leave="afterLeave">
        <div class="dialog__inner" v-if="show">
          <h1>{{ title }}</h1>
          <div class="dialog__body">{{ text }}</div>
          <div class="button-group">
            <template v-if="ok !== null">
              <a @click="ok" class="button">确定</a>
            </template>
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

  name: 'ez-dialog',

  data () {
    return {
      show: true,
      title: '提示',
      text: '提示内容',
      ok: null
    }
  },

  methods: {
    close () {
      this.show = false
    },
    afterLeave () {
      this.$destroy()
    }
  },

  destroyed () {
    this.$el.parentNode.removeChild(this.$el)
  }
}

</script>
<style lang='scss' scoped>
</style>
