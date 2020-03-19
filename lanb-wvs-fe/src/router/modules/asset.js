import IndexZui from '@/views/style/IndexZui'

const assetRouter = {
  path: '/asset',
  name: 'Asset',
  component: IndexZui,
  children: [
    {
      path: 'asset-table',
      components: {
        content: require('@/views/asset/AssetTable').default
      }
    },
    {
      path: '*',
      components: {
        content: require('@/views/common/BlankPage.vue').default
      }
    }
  ]
}

export default assetRouter
