# This script will deploy the initial infrastructure, change the variables if needed.
# You must be signed in to Azure to run this script

# Powershell commands to login to Azure 'Login-AzAccount'

# Declare environment variables
$subscription = '67ed30f7-c635-4fe0-a589-ee84b5460732' # Azure Subscription ID
$resourceGroup = 'githublogicapp-prod' # Azure Resource Group
$keyvaultName = 'githubkeyv-prod' # Azure Keyvault Name
$location = 'westeurope' # Azure Location
$dateTime = Get-Date -Format 'yyyyMMddHHmmss' # Get the current date and time
$deploymentName = 'initialSetup' + $dateTime # Deployment Name with unique timestamp
$servicePrincipalDisplayName = 'sp-githublogicapp-prod' # Service Principal Display Name

## Do not change below this line
# A personal access token must be created first in Github
$secretvalue = Read-Host "Enter a your personal accesstoken" -AsSecureString

# create Azure AD Application and setup up permissions for the subscription you are signed in to
$azureADServicePrincipal = New-AzADServicePrincipal -DisplayName $servicePrincipalDisplayName

# Deploy resources to Azure
Select-AzSubscription $subscription
New-AzResourceGroup -Name $resourceGroup -Location $location

# Setup the keyvault and secrets for CI/CD
New-AzKeyVault `
  -VaultName $keyvaultName `
  -resourceGroupName $resourceGroup `
  -Location $location `
  -EnabledForTemplateDeployment
# Add secrets to the vault
Set-AzKeyVaultSecret -VaultName $keyvaultName -Name 'ghpat' -SecretValue $secretvalue # Github PAT
Set-AzKeyVaultSecret -VaultName $keyvaultName -Name $servicePrincipalDisplayName -SecretValue $azureADServicePrincipal.secret # Service Principal Secret

# Grant permissions to the service principal to access the keyvault
Set-AzKeyVaultAccessPolicy `
  -VaultName $keyvaultName `
  -ObjectId  $azureADServicePrincipal.Id `
  -PermissionsToSecrets set,delete,get,list

# Deploy the logic app in your own context from your terminal, , get the logic app url from the azure portal, as this is sensitive and cannot be outputted to the terminal
New-AzResourceGroupDeployment -Name $deploymentName -ResourceGroupName $resourceGroup -Templatefile .\.bicep\main.bicep



