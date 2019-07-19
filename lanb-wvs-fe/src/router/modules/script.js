import IndexZui from '@/page/IndexZui'

const scriptRouter = {
  path: '/script',
  name: 'Script',
  component: IndexZui,
  children: [
    {
      path: 'script-page',
      components: {
        content: require('@/page/script/ScriptPage').default
      }
    }
  ]
}

export default scriptRouter
