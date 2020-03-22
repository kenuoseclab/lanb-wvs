<template>
  <div>
    <el-row :gutter="20">
      <el-col :span="6">
        <div class="grid-content bg-purple">
          <div class="panel">
            <h1>菜单列表</h1>
            <div class="panel__body">
              <el-tree
                :data="data"
                node-key="id"
                default-expand-all
                :expand-on-click-node="false"
                @node-click="nodeClick"
              >
                <span class="custom-tree-node" slot-scope="{ node, data }">
                  <span>{{ node.label }}</span>
                  <span>
                    <el-button type="text" size="mini" @click.stop="() => append(data)">新增</el-button>
                    <el-button type="text" size="mini" @click.stop="() => remove(node, data)">删除</el-button>
                  </span>
                </span>
              </el-tree>
            </div>
          </div>
        </div>
      </el-col>
      <el-col :span="18">
        <div class="grid-content bg-purple">
          <base-form :fields="fields" :data="formData" title="菜单编辑"></base-form>
        </div>
      </el-col>
    </el-row>
  </div>
</template>

<script>
export default {
  data () {
    return {
      data: [],
      fields: [
        {
          field: 'menuId',
          name: '菜单ID'
        },
        {
          field: 'menuName',
          name: '菜单名称'
        },
        {
          field: 'parentMenuId',
          name: '父菜单ID'
        },
        {
          field: 'menuUrl',
          name: '菜单地址'
        },
        {
          field: 'sort',
          name: '排序'
        },
        {
          field: 'visible',
          name: '是否可见',
          type: 'select',
          codeType: 'yesOrNo'
        }
      ],
      formData: {
        menuId: '',
        menuName: '',
        parentMenuId: '',
        menuUrl: '',
        sort: '',
        field: ''
      }
    }
  },

  mounted () {
    this.$post('/api/menu/getTreeMenu', {}).then(data => {
      const rows = data
      const tmpMenus = rows
      this.data = tmpMenus
      console.log(this.data)
    }).catch(error => {
      console.log(error)
    })
  },

  methods: {

    nodeClick (obj, node, comp) {
      console.log(obj)
      this.formData = obj.attributes
    },

    append (data) {
      const itemData = data.attributes
      const menuId = itemData.menuId
      this.formData = {
        menuId: '',
        menuName: '',
        parentMenuId: menuId,
        menuUrl: '',
        sort: '',
        field: ''
      }
      // const newChild = { id: id++, label: '新增菜单', children: [] }
      // if (!data.children) {
      //   this.$set(data, 'children', [])
      // }
      // data.children.push(newChild)
    },

    remove (node, data) {
      const parent = node.parent
      const children = parent.data.children || parent.data
      const index = children.findIndex(d => d.id === data.id)
      children.splice(index, 1)
    }
  }
}
</script>

<style>
.custom-tree-node {
  flex: 1;
  display: flex;
  align-items: center;
  justify-content: space-between;
  font-size: 14px;
  padding-right: 8px;
}
</style>
