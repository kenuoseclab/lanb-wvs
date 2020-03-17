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
          <div class="panel__body">
            <div class="row">
              <div class="col-6">
                <div class="panel item color--red">
                  待处理漏洞
                  <span class="item-num">10</span>
                </div>
              </div>
              <div class="col-6">
                <div class="panel item color--yellow">
                  待处理报告
                  <span class="item-num">2</span>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-6">
                <div class="panel item color--blue">
                  正在扫描任务
                  <span class="item-num">3</span>
                </div>
              </div>
              <div class="col-6">
                <div class="panel item color--green">
                  已完成
                  <span class="item-num">7</span>
                </div>
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
          <h1>待处理漏洞</h1>
          <div id="echart1" style="height: 350px; width: 100%;"></div>
        </div>
      </div>
      <div class="col-6">
        <div class="panel">
          <h1>资产漏洞数</h1>
          <div id="echart2" style="height: 350px; width: 100%;"></div>
        </div>
      </div>
      <!-- <div class="col-4">
        <div class="panel">
          <h1>图表3</h1>
          <div id="echart3" style="height: 350px; width: 100%;"></div>
        </div>
      </div>-->
    </div>
  </div>
</template>

<script>
import G2 from '@antv/g2'
import FastItems from './FastItems'
// var df = require('date-formatter')

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

  components: {
    FastItems
  },

  mounted () {
    // 初始化图表
    this.renderCharts('echart1')
    this.render2Charts('echart2')
    // this.renderCharts('echart3')

    // 取首页仪表盘数据
    // const parms = {
    //   dateFrom: df(new Date(), 'YYYY-MM-DD')
    // }
    // this
    //   .$post('/api/task/getDashboardData', parms)
    //   .then(data => {
    //     if (data.length === 1) {
    //       this.dashboardData = data[0]
    //     }
    //   })
    //   .catch(() => {
    //     this.$router.push({
    //       path: '/login'
    //     })
    //   })
  },

  methods: {

    renderCharts (id) {
      var data = [ {
        item: '低危漏洞',
        count: 21,
        percent: 0.21
      }, {
        item: '中危漏洞',
        count: 17,
        percent: 0.17
      }, {
        item: '高危漏洞',
        count: 13,
        percent: 0.13
      }]
      var chart = new G2.Chart({
        container: id,
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
        html: '<div style="color:#8c8c8c;font-size: 14px;text-align: center;width: 10em;">漏洞<br><span style="color:#8c8c8c;font-size:20px">10</span>例</div>',
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

    render2Charts (id) {
      var data = [{
        item: '福建省移动',
        count: 40,
        percent: 0.4
      }, {
        item: '福建绿盟科技',
        count: 21,
        percent: 0.21
      }, {
        item: '海峡金桥保险',
        count: 17,
        percent: 0.17
      }, {
        item: '福建省农信',
        count: 13,
        percent: 0.13
      }, {
        item: '福建省农信-分行',
        count: 13,
        percent: 0.13
      }]
      var chart = new G2.Chart({
        container: id,
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
