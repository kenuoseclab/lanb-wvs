import IndexZui from '@/views/style/IndexZui'

const scriptRouter = {
  path: '/script',
  name: 'script',
  component: IndexZui,
  children: [
    {
      name: 'scriptPage',
      path: 'script-page',
      components: {
        content: require('@/views/script/ScriptPage').default
      }
    },
    {
      name: 'scriptTable',
      path: 'script-table',
      components: {
        content: require('@/views/script/ScriptTable').default
      }
    }
  ]
}

export default scriptRouter
