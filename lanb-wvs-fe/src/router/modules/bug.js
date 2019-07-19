import IndexZui from '@/page/IndexZui'

const bugRouter = {
  path: '/bug',
  name: 'Bug',
  component: IndexZui,
  children: [
    {
      path: 'bug-table',
      components: {
        content: require('@/page/bug/BugTable').default
      }
    },
    {
      path: 'bug-level-table',
      components: {
        content: require('@/page/bug/BugLevelTable').default
      }
    }
  ]
}

export default bugRouter
