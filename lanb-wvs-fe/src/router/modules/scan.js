import IndexZui from '@/views/style/IndexZui'

const scanRouter = {
  path: '/scan',
  name: 'scan',
  component: IndexZui,
  children: [
    {
      name: 'scanResult',
      path: 'scan-result',
      components: {
        content: require('@/views/scan/ScanResult').default
      }
    }
  ]
}

export default scanRouter
