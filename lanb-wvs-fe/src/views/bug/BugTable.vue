<template>
  <div>
    <baseTable :fields="fields" baseURL="/api/bug" :btns="btns"></baseTable>
    <!-- <Modal :show.sync="linkScript.isShow">
      <h1 slot="header">关联脚本</h1>
    </Modal> -->

    <el-dialog
      title="关联脚本"
      :visible.sync="linkScript.isShow"
      >
      <span>
        <el-transfer
          filter-placeholder="请选择脚本"
          :titles="['列表', '已选中']"
          v-model="linkScript.value"
          :data="linkScript.data">
        </el-transfer>
      </span>
      <span slot="footer" class="dialog-footer">
        <el-button type="primary" @click="linkScript.isShow = false">确 定</el-button>
        <el-button @click="linkScript.isShow = false">取 消</el-button>
      </span>
    </el-dialog>
  </div>
</template>

<script>
export default {

  name: 'bugTable',

  data () {
    return {

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
      ],

      linkScript: {
        isShow: false,
        data: [{
          key: 1,
          label: '1'
        },
        {
          key: 2,
          label: '2'
        },
        {
          key: 3,
          label: '3'
        }],
        value: [1, 2]
      },

      btns: [
        {
          title: '关联脚本',
          icon: 'icon-guanlian',
          click: (rows, handle) => {
            this.linkScript.isShow = true
            console.log(rows)
            console.log(handle)
          }
        },
        {
          title: '漏洞信息',
          icon: 'icon-guanlian',
          click: function (rows, handle) {
            console.log(rows)
            console.log(handle)
          }
        },
        {
          title: '漏洞批量导入',
          click: function (rows, handle) {
            console.log(rows)
            console.log(handle)
          }
        },
        {
          title: '漏洞导入模板',
          click: function (rows, handle) {
            console.log(rows)
            console.log(handle)
          }
        }
      ]
    }
  },

  methods: {}
}

</script>
<style scoped>
</style>
