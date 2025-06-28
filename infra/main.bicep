param storageAccountName string
param sqlServerName string
param sqlDbName string

resource storageAccount 'Micro.Storage/storageAccount@2022-09-01' = {
  name: storageAccountName
  location:resourceGroup().location
  sku: { name: 'Standard_LRS'}
  kind: 'storageV2'
}

resource sqlServer 'Microsoft.Sql/server@2024-09-01-preview' = {
  name:  sqlServerName
  location: resourceGroup().location
  properties: { adminstratorLogin: 'sqladmin', adminstratorLoginPassword: 'P@ssword1234'}
}

resource sqlDb 'Microsoft.Sql/databases@2024-09-01-preview' = {
  name: '${sqlServerName}/${sqlDbName}'
  location: resourceGroup().location
  sku: {name: 'basic', tier: 'Basic'}
}
