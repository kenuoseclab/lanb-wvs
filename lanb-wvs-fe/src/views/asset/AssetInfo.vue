<template>
  <div>
    <div class="row">
      <div class="col-9">
        <div class="panel" style="height: 250px;">
          <h1 class="panel__title--border">基本信息</h1>
          <div class="panel__body">
            <table class="table">
              <tbody>
                <tr>
                  <td>资产名称</td>
                  <td>文思海辉金信</td>
                  <td>资产等级</td>
                  <td>重要</td>
                </tr>
                <tr>
                  <td>子资产数</td>
                  <td>100</td>
                  <td>资产任务数</td>
                  <td>10</td>
                </tr>
                <tr>
                  <td>未处理漏洞数</td>
                  <td>1</td>
                  <td>可导出报告数</td>
                  <td>15</td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>

      <div class="col-3">
        <div class="panel" style="height: 250px;">
          <h1 class="panel__title--border">威胁统计</h1>
          <div class="panel__body">
            <ul class="list">
              <li>高危漏洞数：10</li>
              <li>中危漏洞数：10</li>
              <li>低危漏洞数：10</li>
            </ul>
            <br>
          </div>
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-12">
        <div class="panel">
          <h1 class="panel__title--border">关联漏洞</h1>
          <div class="panel__body">
            <baseTable :fields="bugTable.fields" baseURL="/api/bug" :isSearch="false" :isToolbar="false"></baseTable>
          </div>
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-12">
        <div class="panel">
          <h1 class="panel__title--border">漏洞信息</h1>
          <div class="panel__body">
            <baseTable :fields="bugTable.fields" baseURL="/api/bug" :isSearch="false" :isToolbar="false"></baseTable>
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
      bugTable: {
        fields: [
          {
            field: 'bugId',
            name: '漏洞ID',
            hidden: true
          },
          {
            field: 'bugName',
            name: '漏洞名'
          },
          {
            field: 'desc',
            name: '漏洞描述',
            type: 'textarea'
          },
          {
            field: 'createTime',
            name: '创建时间',
            type: 'date'
          },
          {
            field: 'createUserName',
            name: '创建人'
          },
          {
            field: 'updateTime',
            name: '更新时间',
            type: 'date'
          },
          {
            field: 'updateUserName',
            name: '更新人'
          },
          {
            field: 'remark',
            name: '备注',
            type: 'textarea'
          }
        ]
      }
    }
  },

  methods: {}
}

</script>
<style lang='scss' scoped>
// .table tr th, .table tr td {
//   border: 0px;
// }
</style>
