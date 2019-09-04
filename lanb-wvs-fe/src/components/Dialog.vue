<template>
  <div>
    <div class="dialog">
      <transition name="bounce">
        <div class="dialog__inner" v-show="show">
          <h1>{{ title }}</h1>
          <div class="dialog__body">
            <slot></slot>
          </div>
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

  props: {
    show: {
      type: Boolean,
      default: false
    },
    title: {
      type: String,
      default: '提示'
    },
    ok: {
      type: Function,
      default: null
    }
  },
  data () {
    return {
    }
  },

  methods: {
    close () {
      this.$emit('update:show', false)
    }
  }
}

</script>
<style lang='scss' scoped>
</style>
