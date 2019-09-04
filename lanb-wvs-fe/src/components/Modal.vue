<template>
  <div>
    <div class="modal">
      <transition name="bounce">
        <div v-if="show" class="modal__inner panel">
          <h1 v-if="title != ''" class="panel__title--border">{{ title }}</h1>
          <div class="panel__body">
            <slot></slot>
          </div>
          <div class="button-group">
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
      type: Number,
      default: 500
    },

    title: {
      type: String,
      default: ''
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
