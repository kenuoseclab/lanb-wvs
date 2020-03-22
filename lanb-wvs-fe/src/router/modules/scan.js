import IndexZui from '@/views/style/IndexZui'

const scanRouter = {
  path: '/scan',
  name: 'Scan',
  component: IndexZui,
  children: [
    {
      path: 'scan-result',
      components: {
        content: require('@/views/scan/ScanResult').default
      }
    }
  ]
}

export default scanRouter
