import IndexZui from '@/views/style/IndexZui'

const bugRouter = {
  path: '/bug',
  name: 'bug',
  component: IndexZui,
  children: [
    {
      name: 'bugTable',
      path: 'bug-table',
      components: {
        content: require('@/views/bug/BugTable').default
      }
    },
    {
      name: 'bugLevelTable',
      path: 'bug-level-table',
      components: {
        content: require('@/views/bug/BugLevelTable').default
      }
    }
  ]
}

export default bugRouter
