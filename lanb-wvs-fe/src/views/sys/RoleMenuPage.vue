<template>
  <div>
    <div class="row">
      <div>
          <tree-menu
            class="panel"
            :folder="treeMenus"
            :callback="callback"
        ></tree-menu>
      </div>
      <div class="col-9">
        <base-form :fields="fields" :data="formData"></base-form>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data () {
    return {
      // 树菜单
      treeMenus: [],
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

  methods: {
    callback: function (menu) {
      this.formData = menu.item.attributes
    }
  },

  created () {
    this.$post('/api/menu/getTreeMenu', {}).then(data => {
      const rows = data
      const tmpMenus = rows
      this.treeMenus = tmpMenus
    }).catch(error => {
      console.log(error)
    })
  }
}

</script>
<style scoped>
#tree-menu {
  width: 200px;
}
</style>
