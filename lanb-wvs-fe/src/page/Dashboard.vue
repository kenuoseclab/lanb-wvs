<template>
  <div class="panel" style="height: 200px;">
    <h1>Dashboard</h1>
    <div class="panel__inner">
      <div class="panel item color--green">总任务数</div>
      <div class="panel item color--blue">正在运行任务数</div>
      <div class="panel item color--red">错误任务数</div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'dashboard',
  data () {
    return {

    }
  }
}
</script>

<style scoped>
.panel__inner {
  padding: 16px;
  display: flex;
  flex-direction: row;
  align-items: center;
}

.panel__inner .item {
  flex: 1;
  height: 100px;
  display: flex;
  align-items: center;
  justify-content: center;
}
</style>
