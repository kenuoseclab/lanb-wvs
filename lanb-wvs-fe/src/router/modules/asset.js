import IndexZui from '@/page/IndexZui'

const assetRouter = {
  path: '/asset',
  name: 'Asset',
  component: IndexZui,
  children: [
    {
      path: 'asset-table',
      components: {
        content: require('@/page/asset/AssetTable').default
      }
    },
    {
      path: '*',
      components: {
        content: require('@/page/page/BlankPage.vue').default
      }
    }
  ]
}

export default assetRouter
