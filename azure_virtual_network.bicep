param virtualNetworkAddressPrefix array
param subnetConfigurations array = [
  {
    name: 'subnet-1a'
    addressPrefix: '10.168.0.0/24'
  }
  {
    name: 'subnet-1b'
    addressPrefix: '10.168.1.0/24'
  }
]

resource virtualNetwork 'Microsoft.Network/virtualNetworks@2019-11-01' = {
  name: 'temporal_bicep_test'
  location: 'japaneast'
  properties: {
    addressSpace: {
      addressPrefixes: virtualNetworkAddressPrefix
    }
    subnets: [for subnetConfig in subnetConfigurations: {
	name: subnetConfig.name
	properties: {
          addressPrefix: subnetConfig.addressPrefix
	}
    }]
  }
}
