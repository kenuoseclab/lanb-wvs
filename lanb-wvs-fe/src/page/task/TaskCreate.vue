<template>
  <div class="panel">
    <h1>扫描任务</h1>
    <div class="panel__inner">
      <form class="form">
        <div class="form__block">
          <label class="input-label" for="taskName">任务名</label>
          <input class="input" placeholder="请输入任务名">
        </div>
        <div class="form__block">
          <label class="input-label" for="desc">任务描述</label>
          <input class="input" placeholder="请输入任务描述">
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
        <div class="form__block" style="margin-top: 32px;">
          <a class="button">保存</a>
          <a class="button">重置</a>
        </div>
      </form>
    </div>
  </div>
</template>

<script>
export default {
  name: 'taskCreate',
  data () {
    return {

    }
  }
}
</script>

<style scoped>
</style>
