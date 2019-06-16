<template>
  <div class="panel">
    <h1>基础表单</h1>
    <div class="panel__inner">
      <!-- <form class="form">
        <div class="form__block">
          <label class="input-label" for="测试">测试</label>
          <input class="input" placeholder="请输入测试">
        </div>
        <div class="form__block">
          <label class="input-label" for="测试">测试</label>
          <input class="input" placeholder="请输入测试">
        </div>
        <div class="form__block">
          <label class="input-label" for="测试">测试</label>
          <input class="input" placeholder="请输入测试">
        </div>
        <div class="form__block">
          <label class="input-label" for="测试">测试</label>
          <input class="input" placeholder="请输入测试">
        </div>
        <div class="form__block">
          <label class="input-label" for="测试">测试</label>
          <input class="input" placeholder="请输入测试">
        </div>
        <div class="form__block">
          <label class="input-label" for="测试">测试</label>
          <input class="input" placeholder="请输入测试">
        </div>
        <div class="form__block">
          <label class="input-label" for="测试">测试</label>
          <input class="input" placeholder="请输入测试">
        </div>
        <div class="form__block">
          <a class="button">保存</a>
          <a class="button">重置</a>
        </div>
      </form>-->
      <form class="form">
        <div v-for="(field, index) in fields" :key="index" class="form__block">
          <label class="input-label" :for="field.name">{{ field.name }}</label>
          <input class="input" v-model="data[field.field]" :placeholder="'请输入' + field.name">
        </div>
        <div class="form__block">
          <a class="button">保存</a>
          <a class="button">重置</a>
        </div>
      </form>
    </div>
  </div>
</template>

<script>
export default {
  name: 'baseForm',

  props: {

    fields: {
      default: function () {
        return []
      },
      type: Array
    },

    data: {
      default: function () {
        return {}
      },
      type: Object
    }

  },

  data () {
    return {
    }
  }
}
</script>

<style scoped>
</style>
