<template>
  <div>
    <div class="panel" style="height: 200px;">
      <h1>数据总览</h1>
      <div class="row panel__inner">
        <div class="col-4">
          <div class="panel item color--green">总任务数&nbsp;{{ dashboardData.allCount }}</div>
        </div>
        <div class="col-4">
          <div class="panel item color--blue">正在运行任务数&nbsp;{{ dashboardData.runningCount }}</div>
        </div>
        <div class="col-4">
          <div class="panel item color--red">错误任务数&nbsp;{{ dashboardData.errorCount }}</div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-4">
        <div class="panel">
          <h1>图表1</h1>
          <div id="echart1" style="height: 350px;"></div>
        </div>
      </div>
      <div class="col-4">
        <div class="panel">
          <h1>图表2</h1>
          <div id="echart2" style="height: 350px;"></div>
        </div>
      </div>
      <div class="col-4">
        <div class="panel">
          <h1>图表3</h1>
          <div id="echart3" style="height: 350px;"></div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
const echarts = require('echarts/lib/echarts')
require('echarts/lib/chart/pie')
require('echarts/lib/component/tooltip')
require('echarts/lib/component/title')
var df = require('date-formatter')
export default {
  name: 'dashboard',
  data () {
    return {
      dashboardData: {
        allCount: 0,
        runningCount: 0,
        errorCount: 0
      }
    }
  },

  mounted () {
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('echart1'))
    var myChart2 = echarts.init(document.getElementById('echart2'))
    var myChart3 = echarts.init(document.getElementById('echart3'))
    var option = {
      series: [
        {
          name: '访问来源',
          type: 'pie',
          radius: '55%',
          data: [
            { value: 235, name: '视频广告' },
            { value: 274, name: '联盟广告' },
            { value: 310, name: '邮件营销' },
            { value: 335, name: '直接访问' },
            { value: 400, name: '搜索引擎' }
          ]
        }
      ]
    }
    // 绘制图表
    myChart.setOption(option)
    myChart2.setOption(option)
    myChart3.setOption(option)

    // 取首页仪表盘数据
    const parms = {
      dateFrom: df(new Date(), 'YYYY-MM-DD')
    }
    this
      .$post('/api/task/getDashboardData', parms)
      .then(data => {
        if (data.length === 1) {
          this.dashboardData = data[0]
        }
      })
      .catch(() => {
        this.$router.push({
          path: '/login'
        })
      })
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
