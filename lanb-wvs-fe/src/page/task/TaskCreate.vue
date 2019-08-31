<template>
  <div class="row">
    <div class="col-6">
      <div class="panel">
        <h1>扫描任务</h1>
        <div class="panel__body">
          <form class="form">
            <div class="form__block">
              <label class="input-label" for="taskName">任务名</label>
              <input class="input" placeholder="请输入任务名" />
            </div>
            <div class="form__block">
              <label class="input-label" for="desc">任务描述</label>
              <input class="input" placeholder="请输入任务描述" />
            </div>
            <div class="form__block">
              <label class="input-label" for="资产列表">资产列表</label>
              <input class="input" placeholder="请输入资产列表" />
              <a class="edit-btn">
                <!-- <i class="iconfont icon-addNew"></i> -->
                选择
              </a>
            </div>
            <div class="form__block">
              <label class="input-label" for="测试">测试</label>
              <input class="input" placeholder="请输入测试" />
            </div>
            <div class="form__block">
              <label class="input-label" for="测试">测试</label>
              <input class="input" placeholder="请输入测试" />
            </div>
            <div class="form__block">
              <label class="input-label" for="测试">测试</label>
              <input class="input" placeholder="请输入测试" />
            </div>
            <div class="form__block">
              <label class="input-label" for="测试">测试</label>
              <input class="input" placeholder="请输入测试" />
            </div>
            <div class="form__block" style="margin-top: 32px;">
              <a class="button">保存</a>
              <a class="button">重置</a>
            </div>
          </form>
        </div>
      </div>
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

<style lang="scss" scoped>

.edit-btn {
  display: inline-block;
  margin-left: 8px;
  color: #3080fe;
  cursor: pointer;

  &:hover {
    text-decoration: underline;
  }

  i {
    font-size: 9pt;
  }

}

</style>
