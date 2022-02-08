resource virtualNetwork 'Microsoft.Network/virtualNetworks@2019-11-01' = {
  name: 'temporal_bicep_test'
  location: 'japaneast'
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.168.0.0/16'
      ]
    }
    subnets: [
      {
        name: 'Subnet-1'
        properties: {
          addressPrefix: '10.168.0.0/24'
        }
      }
      {
        name: 'Subnet-2'
        properties: {
          addressPrefix: '10.168.1.0/24'
        }
      }
    ]
  }
}
