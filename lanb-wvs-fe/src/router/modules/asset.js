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
    }
  ]
}

export default assetRouter
