<template>
  <div>
    <div class="row" style="margin-bottom: 20px;">
      <div class="col-9">
        <div class="panel">
          <h1>基本信息</h1>
          <div class="panel__body">
            <table class="table">
              <tbody>
                <tr>
                  <td>1</td>
                  <td>1</td>
                  <td>1</td>
                </tr>
                <tr>
                  <td>1</td>
                  <td>1</td>
                  <td>1</td>
                </tr>
                <tr>
                  <td>1</td>
                  <td>1</td>
                  <td>1</td>
                </tr>
                <tr>
                  <td>1</td>
                  <td>1</td>
                  <td>1</td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>

      <div class="col-3">
        <div class="panel">
          <h1 class="panel__title">威胁统计</h1>
          <div class="panel__body">威胁统计</div>
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-12">
        <div class="panel">
          <h1 class="panel__title">漏洞信息</h1>
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
</style>
