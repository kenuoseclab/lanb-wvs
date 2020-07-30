<template>
  <div>
    <baseTable :fields="fields" baseURL="/api/bug" :btns="btns"></baseTable>
    <!-- <Modal :show.sync="linkScript.isShow">
      <h1 slot="header">关联脚本</h1>
    </Modal>-->

    <el-dialog center title="关联脚本" :visible.sync="linkScript.isShow">
      <div>
        <el-transfer
          filter-placeholder="请选择脚本"
          :titles="['列表', '已选中']"
          v-model="linkScript.value"
          :data="linkScript.data"
        ></el-transfer>
      </div>
      <span slot="footer" class="dialog-footer">
        <el-button type="primary" @click="linkScriptOk">确 定</el-button>
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
        data: [],
        value: [],
        bugId: null
      },

      btns: [
        {
          title: '关联脚本',
          icon: 'icon-guanlian',
          click: (rows, handle) => {
            if (rows.length !== 1) {
              this.$message({
                showClose: true,
                message: '请选择一行记录',
                type: 'error'
              })
              return
            }
            this.linkScript.data = []
            this.linkScript.value = []
            this.linkScript.bugId = rows[0].bugId
            this.linkScript.isShow = true

            this.$post('/api/script/query', {}).then(data => {
              this.linkScript.data = this.parseData(data, 'scriptId', 'scriptName')
            })

            this.$post('/api/script/query', {
              bugId: this.linkScript.bugId
            }).then(data => {
              this.linkScript.value = this.parseValue(data, 'scriptId')
            })
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

  methods: {
    parseData (arr, key, label) {
      const resArr = []
      for (let index = 0; index < arr.length; index++) {
        const element = arr[index]
        resArr.push({
          key: element[key],
          label: element[label]
        })
      }
      return resArr
    },

    parseValue (array, key) {
      const resArr = []
      for (let index = 0; index < array.length; index++) {
        const element = array[index]
        resArr.push(element[key])
      }
      return resArr
    },

    linkScriptOk () {
      const scriptId = this.linkScript.value.join(',')
      this.$post('/api/script/linkBug', {
        scriptId: scriptId,
        bugId: this.linkScript.bugId
      }).then(data => {
        this.$message({
          showClose: true,
          message: '设置成功',
          type: 'success'
        })
        this.linkScript.isShow = false
      })
    }
  }
}

</script>
<style scoped>
</style>
