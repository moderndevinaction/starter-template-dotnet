param location string = resourceGroup().location
param environmentName string = 'env-${uniqueString(resourceGroup().id)}'
param minReplicas int = 0
param dotnetImage string = 'g'
param dotnetPort int = 5000
param isNodeExternalIngress bool = true
param containerRegistry string
param containerRegistryUsername string

@secure()
param containerRegistryPassword string

var dotnetServiceAppName = 'dotnet-app'

// // container app environment
module environment 'environment.bicep' = {
  name: 'container-app-environment'
  params: {
    environmentName: environmentName
  }
}
/*
// node App
module nodeService 'container-http.bicep' = {
  name: dotnetServiceAppName
  params: {
    containerAppName: dotnetServiceAppName
    environmentId: environment.outputs.environmentId
    containerImage: dotnetImage
    containerPort: dotnetPort
    isExternalIngress: isNodeExternalIngress
    minReplicas: minReplicas
    containerRegistry: containerRegistry
    containerRegistryUsername: containerRegistryUsername
    containerRegistryPassword: containerRegistryPassword
  }
}

output nodeFqdn string = nodeService.outputs.fqdn
output pythonFqdn string = pythonService.outputs.fqdn
output goFqdn string = goService.outputs.fqdn
output apimFqdn string = apim.outputs.fqdn
*/
