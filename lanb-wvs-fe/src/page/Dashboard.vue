<template>
  <div>
    <div class="panel" style="height: 200px;">
      <h1>Dashboard</h1>
      <div class="row panel__inner">
        <div class="col-4">
          <div class="panel item color--green">总任务数</div>
        </div>
        <div class="col-4">
          <div class="panel item color--blue">正在运行任务数</div>
        </div>
        <div class="col-4">
          <div class="panel item color--red">错误任务数</div>
        </div>
      </div>
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
  justify-content: space-between;
}

.panel__inner .item {
  height: 100px;
  display: flex;
  align-items: center;
  justify-content: center;
}
</style>
