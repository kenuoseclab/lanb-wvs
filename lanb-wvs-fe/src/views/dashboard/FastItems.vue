<template>
  <div class="panel rowtop">
    <h1>
      <i class="iconfont icon-kuaijieyingyon"></i>
      快捷方式
    </h1>
    <div class="panel__body">
      <div>
        <div class="row">
          <div class="col-4">
            <div class="panel fastitem color--green">
              <router-link tag="div" class="panel__body" to="/task/task-create">
                <i class="iconfont icon-addNew"></i>
                创建任务
              </router-link>
            </div>
          </div>
          <div class="col-4">
            <div class="panel fastitem color--blue">
              <router-link tag="div" class="panel__body" to="/bug/bug-table">
                <i class="iconfont icon-query-knowledge"></i>
                漏洞知识库
              </router-link>
            </div>
          </div>
          <div class="col-4">
            <div class="panel fastitem color--blue">
              <router-link tag="div" class="panel__body" to="/asset/asset-table">
                <i class="iconfont icon-script-language"></i>
                新建资产
              </router-link>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-4">
            <div class="panel fastitem color--blue">
              <router-link tag="div" class="panel__body" to="/asset/asset-table">
                <i class="iconfont icon-script-language"></i>
                资产列表
              </router-link>
            </div>
          </div>
          <div class="col-4">
            <div class="panel fastitem">
              <router-link tag="div" class="panel__body" to="/scan/scan-result">
                <i class="iconfont icon-kuaijieyingyon"></i>
                漏洞台账
              </router-link>
            </div>
          </div>
          <div class="col-4">
            <div class="panel fastitem">
              <div class="panel__body" @click="clickFastItem">
                <i class="iconfont icon-kuaijieyingyon"></i>
                快捷方式
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data () {
    return {
    }
  },

  methods: {
    clickFastItem () {
      this.$alert('暂未开发', '提示', {
        confirmButtonText: '确定'
      })
    }
  }
}

</script>
<style lang='scss' scoped>
.fastitem {
  cursor: pointer;
  i {
    margin-right: 3px;
    font-size: 12px;
  }
}
</style>
