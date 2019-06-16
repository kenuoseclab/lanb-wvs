<template>
  <div>
    <div class="row">
      <div class="col-3">
        <transition name="fade">
          <tree-menu
            v-if="treeMenus.length > 0"
            class="panel"
            :folder="treeMenus"
            :callback="callback"
          ></tree-menu>
        </transition>
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
          name: '是否可见'
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
      console.log(menu)
      let item = menu.item
      let id = item.id
      this.formData.menuId = item.id
      this.$post('/api/menu/query', {
        menuId: id
      }).then(data => {
        if (data.length === 1) {
          this.formData = data[0]
          console.log(data[0])
        }
      })
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
