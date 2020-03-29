import IndexZui from '@/views/style/IndexZui'

const assetRouter = {
  path: '/asset',
  name: 'asset',
  component: IndexZui,
  children: [
    {
      name: 'assetTable',
      path: 'asset-table',
      components: {
        content: require('@/views/asset/AssetTable').default
      }
    },
    {
      name: 'blankPage',
      path: '*',
      components: {
        content: require('@/views/common/BlankPage.vue').default
      }
    }
  ]
}

export default assetRouter
