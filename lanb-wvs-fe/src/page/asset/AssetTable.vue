<template>
  <div>
    <baseTable :fields="fields" baseURL="/api/asset" :btns="btns"></baseTable>

    <Modal :show.sync="assetInfo.show" title="资产信息" width="80%" height="600px">
      <AssetInfo></AssetInfo>
    </Modal>

    <Modal :show.sync="portScan.show">
      端口扫描
    </Modal>

    <Modal :show.sync="assetDiscovery.show">
      <ul class="list">
        <li>资产1&nbsp;http://qq.com/a.html</li>
        <li>资产1&nbsp;http://qq.com/a.html</li>
        <li>资产1&nbsp;http://qq.com/a.html</li>
        <li>资产1&nbsp;http://qq.com/a.html</li>
        <li>资产1&nbsp;http://qq.com/a.html</li>
        <li>资产1&nbsp;http://qq.com/a.html</li>
        <li>资产1&nbsp;http://qq.com/a.html</li>
      </ul>
    </Modal>

  </div>
</template>

<script>
import AssetInfo from './AssetInfo'
export default {

  name: 'assetTable',

  data () {
    return {

      // 资产信息
      assetInfo: {
        show: false
      },

      // 端口扫描
      portScan: {
        show: false
      },

      // 资产发现
      assetDiscovery: {
        show: false
      },

      fields: [
        {
          field: 'assetId',
          name: '资产ID',
          hidden: true
        },
        {
          field: 'assetName',
          name: '资产名称'
        },
        {
          field: 'updateTime',
          name: '创建时间',
          type: 'date'
        },
        {
          field: 'createUserId',
          name: '创建人',
          hidden: true
        },
        {
          field: 'createUserName',
          name: '创建人'
        },
        {
          field: 'createTime',
          name: '更新时间',
          type: 'date'
        },
        {
          field: 'updateUserId',
          name: '更新人',
          hidden: true
        },
        {
          field: 'updateUserName',
          name: '更新人'
        },
        {
          field: 'remark',
          name: '备注'
        }
      ],

      btns: [
        {
          title: '资产信息',
          icon: 'icon-chazhao',
          click: () => {
            this.assetInfo.show = true
          }
        },
        {
          title: '端口扫描',
          icon: 'icon-chazhao',
          click: () => {
            this.portScan.show = true
          }
        },
        {
          title: '资产发现',
          icon: 'icon-chazhao',
          click: () => {
            this.assetDiscovery.show = true
          }
        }
      ]
    }
  },

  components: {
    AssetInfo
  }
}

</script>
<style scoped>
</style>
