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
    }
  ]
}

export default assetRouter
