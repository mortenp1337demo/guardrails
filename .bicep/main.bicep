param subscriptionId string = '67ed30f7-c635-4fe0-a589-ee84b5460732'
param kvResourceGroup string = 'githublogicapp-prod'
param kvName string = 'githubkeyv-prod'
param location string = 'westeurope'
param username string = 'mortenp1337' //this is your GitHub username

resource kv 'Microsoft.KeyVault/vaults@2019-09-01' existing = {
  name: kvName
  scope: resourceGroup(subscriptionId, kvResourceGroup)
}

module logicapp 'github-logicapp.bicep' = {
  name: 'github-logicapp'
  params: {
    ghpat: kv.getSecret('ghpat')
    location: location
    username: username
  }
}
