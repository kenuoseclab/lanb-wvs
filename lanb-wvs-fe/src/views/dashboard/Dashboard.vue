<template>
  <div>
    <div class="row">
      <div class="col-4">
        <FastItems></FastItems>
      </div>
      <div class="col-4">
        <div class="panel rowtop">
          <h1>
            <i class="iconfont icon-daibanshixiang"></i>
            待办事项
          </h1>
          <div class="panel__body" v-loading="dashboardData.isLoading">
            <div class="row">
              <div class="col-6">
                <router-link tag="div" class="panel item color--red" to="/scan/scan-result">
                  待处理漏洞
                  <span class="item-num">{{dashboardData.todoCount}}</span>
                </router-link>
              </div>
              <div class="col-6">
                <div class="panel item color--yellow">
                  待处理报告
                  <span class="item-num">{{dashboardData.reportCount}}</span>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-6">
                <router-link tag="div" class="panel item color--blue" to="/task/task-log-table">
                  正在扫描任务
                  <span class="item-num">{{dashboardData.runningCount}}</span>
                </router-link>
              </div>
              <div class="col-6">
                  <router-link tag="div" class="panel item color--green" to="/task/task-log-table">
                  已完成
                  <span class="item-num">{{dashboardData.finshedCount}}</span>
                  </router-link>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-4">
        <div class="panel rowtop">
          <h1>
            <i class="iconfont icon-banbenhao"></i>
            版本信息
          </h1>
          <div class="row panel__body">
            <table class="table">
              <tbody>
                <tr>
                  <td>当前版本</td>
                  <td>v0.1</td>
                </tr>
                <tr>
                  <td>基于框架</td>
                  <td>LANB WEB</td>
                </tr>
                <tr>
                  <td>讨论</td>
                  <td>
                    QQ群：82667033
                    <br />QQ：425343603
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-6">
        <div class="panel">
          <h1>
            <i class="iconfont icon-tubiao"></i>
            待处理漏洞
          </h1>
          <div id="echart1" v-loading="isTodoBugCountLoading" style="height: 350px; width: 100%;"></div>
        </div>
      </div>
      <div class="col-6">
        <div class="panel">
          <h1>
            <i class="iconfont icon-tubiao"></i>
            资产漏洞数
          </h1>
          <template>
            <div id="echart2" v-loading="isAssetbugsCountLoading" style="height: 350px; width: 100%;"></div>
          </template>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import G2 from '@antv/g2'
import FastItems from './FastItems'
var df = require('date-formatter')

export default {
  name: 'dashboard',
  data () {
    return {
      dashboardData: {
        finshedCount: 0,
        runningCount: 0,
        todoCount: 0,
        reportCount: 0,
        isLoading: true
      },
      isTodoBugCountLoading: true,
      todoBugCount: [],
      chart2Data: [],
      isAssetbugsCountLoading: true
    }
  },

  components: {
    FastItems
  },

  mounted () {
    // 取首页仪表盘数据
    const parms = {
      dateFrom: df(new Date(), 'YYYY-MM-DD')
    }
    this
      .$post('/api/task/getDashboardData', parms)
      .then(data => {
        if (data.length === 1) {
          this.dashboardData = data[0]
          this.dashboardData.isLoading = false
        }
      })
      .catch(() => {
        this.$router.push({
          path: '/login'
        })
      })

    this.initAssetBugsCount()

    this
      .$post('/api/scanResult/getTodoBugCount', {})
      .then(data => {
        this.todoBugCount = data
        this.isTodoBugCountLoading = false
        this.renderTodoBugCount()
      })
      .catch(() => {
        this.$router.push({
          path: '/login'
        })
      })
  },

  methods: {

    initAssetBugsCount () {
      this
        .$post('/api/scanResult/getAssetbugsCount', {})
        .then(data => {
          this.chart2Data = data
          this.isAssetbugsCountLoading = false
          this.renderAssetBugsCount()
        })
        .catch(() => {
          this.$router.push({
            path: '/login'
          })
        })
    },

    renderTodoBugCount () {
      var data = this.todoBugCount
      var totalCount = 0
      for (let index = 0; index < data.length; index++) {
        const element = data[index]
        totalCount += element.count
      }
      var chart = new G2.Chart({
        container: 'echart1',
        forceFit: true,
        height: 350,
        animate: false
      })
      chart.source(data, {
        percent: {
          formatter: function formatter (val) {
            val = val * 100 + '%'
            return val
          }
        }
      })
      chart.coord('theta', {
        radius: 0.75,
        innerRadius: 0.6
      })
      chart.tooltip({
        showTitle: false,
        itemTpl: '<li><span style="background-color:{color};" class="g2-tooltip-marker"></span>{name}: {value}</li>'
      })
      // 辅助文本
      chart.guide().html({
        position: ['50%', '50%'],
        html: '<div style="color:#8c8c8c;font-size: 14px;text-align: center;width: 10em;">漏洞<br><span style="color:#8c8c8c;font-size:20px">' + totalCount + '</span>例</div>',
        alignX: 'middle',
        alignY: 'middle'
      })
      var interval = chart.intervalStack().position('percent').color('item', ['#3AA1FF', '#FBD437', '#F47F92']).label('percent', {
        formatter: function formatter (val, item) {
          return item.point.item + ': ' + val
        }
      }).tooltip('item*percent', function (item, percent) {
        percent = percent * 100 + '%'
        return {
          name: item,
          value: percent
        }
      }).style({
        lineWidth: 1,
        stroke: '#fff'
      })
      chart.render()
      interval.setSelected(data[0])
    },

    renderAssetBugsCount () {
      var data = this.chart2Data
      var chart = new G2.Chart({
        container: 'echart2',
        forceFit: true,
        height: 350,
        animate: false
      })
      chart.source(data, {
        percent: {
          formatter: function formatter (val) {
            val = val + '%'
            return val
          }
        }
      })
      chart.coord('theta', {
        radius: 0.75,
        innerRadius: 0.6
      })
      chart.tooltip({
        showTitle: false,
        itemTpl: '<li><span style="background-color:{color};" class="g2-tooltip-marker"></span>{name}: {value}</li>'
      })
      // 辅助文本
      chart.guide().html({
        position: ['50%', '50%'],
        html: '<div style="color:#8c8c8c;font-size: 14px;text-align: center;width: 10em;">资产</div>',
        alignX: 'middle',
        alignY: 'middle'
      })
      var interval = chart.intervalStack().position('percent').color('item').label('percent', {
        formatter: function formatter (val, item) {
          return item.point.item + ': ' + val
        }
      }).tooltip('item*percent', function (item, percent) {
        percent = percent * 100 + '%'
        return {
          name: item,
          value: percent
        }
      }).style({
        lineWidth: 1,
        stroke: '#fff'
      })
      chart.render()
      interval.setSelected(data[0])
    }
  }
}
</script>

<style lang="scss" scoped>
// .panel__body {
//   padding: 16px;
// }

// .fastitem {
//   // background-color: #f8f8f8;
//   &:hover {
//     background-color: #f2f2f2;
//     border: 1px solid #f2f2f2;
//     transition: all 0.3s;
//     border: 1px solid #999999;
//     cursor: pointer;
//     color: #333333;
//   }
// }

.fastitem {
  cursor: pointer;
}

.rowtop {
  max-height: 250px;
  height: 250px;

  .item {
    height: 60px;
    display: flex;
    align-items: center;
    justify-content: center;
    cursor: pointer;
  }
}

.item-num {
  font-size: 14px;
  margin-top: 8px;
}
</style>
