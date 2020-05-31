<template>
  <div>
    <base-table :fields="fields" baseURL="/api/user" :api="api">
      <base-table-column field="action" name="操作"></base-table-column>
      <template slot="action" slot-scope="data">
        <el-button size="mini" type="primary" @click="editUser(data.row)">编辑</el-button>
        <!-- <el-button size="mini" @click="isModal = true">角色</el-button> -->
      </template>
    </base-table>
    <el-dialog title="编辑" :visible.sync="editUserShow" width="70%" :close-on-click-modal="false">
      <el-tabs v-model="activeName" @tab-click="handleClick">
        <el-tab-pane label="基础信息" name="baseInfo">
          <el-card>
            <el-form :inline="true" size="small" label-position="right">
              <el-form-item label="测试" label-width="200px">
                <el-input></el-input>
              </el-form-item>
              <el-form-item label="测试" label-width="200px">
                <el-input></el-input>
              </el-form-item>
              <el-form-item label="测试" label-width="200px">
                <el-input></el-input>
              </el-form-item>
            </el-form>
          </el-card>
        </el-tab-pane>

        <el-tab-pane label="角色设置" name="roleSetting">
          <el-form label-width="auto" size="small" label-position="right">
            <el-form-item>
              <el-alert type="info" description="请勾选下面的角色，设置账号权限：" :closable="false"></el-alert>
            </el-form-item>
            <el-form-item>
              <el-checkbox-group v-model="checkedRoles">
                <el-checkbox
                  v-for="role in roleList"
                  :label="role.roleId"
                  :key="role.roleId"
                >{{role.roleName}}</el-checkbox>
              </el-checkbox-group>
            </el-form-item>
          </el-form>
        </el-tab-pane>
        <el-tab-pane label="其他设置" name="other">
          <el-alert type="info" description="敬请期待" :closable="false"></el-alert>
        </el-tab-pane>
      </el-tabs>

      <span slot="footer" class="dialog-footer">
        <el-button @click="editUserShow = false">取 消</el-button>
        <el-button type="primary" @click="editUserClick()">确 定</el-button>
      </span>
    </el-dialog>
    <el-dialog title="角色选择" :visible.sync="isModal" width="70%">
      <base-table
        :isToolbar="false"
        :fields="roleFiled"
        baseURL="/api/role"
        style="height: 50vh; overflow-y: scroll;"
      ></base-table>
      <span slot="footer" class="dialog-footer">
        <el-button @click="isModal = false">取 消</el-button>
        <el-button type="primary" @click="isModal = false">确 定</el-button>
      </span>
    </el-dialog>
  </div>
</template>

<script>
export default {
  name: 'userTable',

  data () {
    return {

      row: {},

      checkedRoles: [],

      roleList: [],

      activeName: 'baseInfo',

      editUserShow: false,
      isModal: false,

      roleFiled: [
        {
          field: 'roleId',
          name: '角色ID'
        },
        {
          field: 'roleName',
          name: '角色名'
        },
        {
          field: 'options',
          name: '角色配置项',
          hidden: true
        },
        {
          field: 'parentRoleId',
          name: '父角色ID',
          hidden: true
        },
        {
          field: 'sort',
          name: '排序'
        },
        {
          field: 'createTime',
          name: '创建时间',
          type: 'date'
        }
      ],

      api: {
        'save': '/register',
        'delete': '/delete',
        'update': '/update',
        'query': '/queryPage'
      },

      fields: [
        {
          field: 'userId',
          name: '用户ID'
        },
        {
          field: 'userName',
          name: '用户名称'
        },
        {
          field: 'password',
          name: '密码',
          type: 'password'
        },
        {
          field: 'createDate',
          type: 'date',
          name: '创建时间'
        },
        {
          field: 'lastDate',
          type: 'date',
          name: '更新时间'
        },
        {
          field: 'enable',
          type: 'select',
          name: '是否启用',
          codeType: 'yesOrNo'
        }
      ]
    }
  },

  methods: {

    editUserClick () {
      if (this.activeName === 'roleSetting') {
        console.log('角色设置')
      }
    },

    editUser (row) {
      this.editUserShow = true
      this.row = row

      this
        .$post('/api/role/query', {})
        .then(data => {
          this.roleList = data

          this
            .$post('/api/roleUser/query', {
              userId: this.row.userId
            })
            .then(data => {
              console.log(data)
              for (let index = 0; index < data.length; index++) {
                const role = data[index]
                this.checkedRoles.push(role.roleId)
              }
            })
        })
    },

    handleClick () {

    }
  }
}

</script>
<style scoped>
</style>
