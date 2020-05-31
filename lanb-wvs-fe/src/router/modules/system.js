import IndexZui from '@/views/style/IndexZui'

// 系统管理
const sysRouter = {
  path: '/sys',
  name: 'sys',
  component: IndexZui,
  children: [
    // 系统配置管理
    {
      name: 'configTable',
      path: 'config-table',
      components: {
        content: require('@/views/sys/ConfigTable').default
      }
    },
    // 菜单管理
    {
      name: 'menuTable',
      path: 'menu-table',
      components: {
        content: require('@/views/sys/MenuTable').default
      }
    },
    // 代码类型管理
    {
      name: 'codeTypeTable',
      path: 'code-type-table',
      components: {
        content: require('@/views/sys/CodeTypeTable').default
      }
    },
    // 代码信息管理
    {
      name: 'codeInfoTable',
      path: 'code-info-table',
      components: {
        content: require('@/views/sys/CodeInfoTable').default
      }
    },
    // 角色管理
    {
      name: 'roleTable',
      path: 'role-table',
      components: {
        content: require('@/views/sys/RoleTable').default
      }
    },
    // 角色菜单管理
    {
      name: 'roleMenuPage',
      path: 'role-menu-page',
      components: {
        content: require('@/views/sys/RoleMenuPage').default
      }
    },
    // 角色用户管理
    {
      name: 'roleUserPage',
      path: 'role-user-page',
      components: {
        content: require('@/views/sys/RoleUserPage').default
      }
    },
    // 日志管理
    {
      name: 'logTable',
      path: 'log-table',
      components: {
        content: require('@/views/sys/LogTable').default
      }
    },
    // 用户管理
    {
      name: 'userTable',
      path: 'user-table',
      components: {
        content: require('@/views/sys/UserTable').default
      }
    },
    // 代码生成
    {
      name: 'codeCreate',
      path: 'code-create',
      components: {
        content: require('@/views/sys/CodeCreate').default
      }
    },
    // 代码生成表格
    {
      name: 'codeCreateTable',
      path: 'code-create-table',
      components: {
        content: require('@/views/sys/CodeCreateTable').default
      }
    }
  ]
}

export default sysRouter
