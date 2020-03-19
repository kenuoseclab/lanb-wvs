import IndexZui from '@/views/style/IndexZui'

const scriptRouter = {
  path: '/script',
  name: 'Script',
  component: IndexZui,
  children: [
    {
      path: 'script-page',
      components: {
        content: require('@/views/script/ScriptPage').default
      }
    }
  ]
}

export default scriptRouter
