import IndexZui from '@/page/IndexZui'

// 系统管理
const sysRouter = {
  path: '/sys',
  name: 'Sys',
  component: IndexZui,
  children: [
    // 菜单管理
    {
      path: 'menu-table',
      components: {
        content: require('@/page/sys/MenuTable').default
      }
    },
    // 代码类型管理
    {
      path: 'code-type-table',
      components: {
        content: require('@/page/sys/CodeTypeTable').default
      }
    },
    // 代码信息管理
    {
      path: 'code-info-table',
      components: {
        content: require('@/page/sys/CodeInfoTable').default
      }
    },
    // 代码信息管理
    {
      path: 'config-table',
      components: {
        content: require('@/page/sys/ConfigTable').default
      }
    },
    // 代码信息管理
    {
      path: 'role-table',
      components: {
        content: require('@/page/sys/RoleTable').default
      }
    },
    // 角色菜单管理
    {
      path: 'role-menu-page',
      components: {
        content: require('@/page/sys/RoleMenuPage').default
      }
    },
    // 角色用户管理
    {
      path: 'role-user-page',
      components: {
        content: require('@/page/sys/RoleUserPage').default
      }
    },
    // 日志管理
    {
      path: 'log-table',
      components: {
        content: require('@/page/sys/LogTable').default
      }
    },
    // 用户管理
    {
      path: 'user-table',
      components: {
        content: require('@/page/sys/UserTable').default
      }
    },
    // 代码生成
    {
      path: 'code-create',
      components: {
        content: require('@/page/sys/CodeCreate').default
      }
    }
  ]
}

export default sysRouter
