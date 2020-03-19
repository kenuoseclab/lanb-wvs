import IndexZui from '@/views/style/IndexZui'

const bugRouter = {
  path: '/bug',
  name: 'Bug',
  component: IndexZui,
  children: [
    {
      path: 'bug-table',
      components: {
        content: require('@/views/bug/BugTable').default
      }
    },
    {
      path: 'bug-level-table',
      components: {
        content: require('@/views/bug/BugLevelTable').default
      }
    }
  ]
}

export default bugRouter
