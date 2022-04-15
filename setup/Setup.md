# Setup

## Configure Azure Infrastructure

A powershell script is provided [here](AzureInitialSetup.ps1)

Change the variables in the script to match your environment.

Examples:

```powershell
# Declare environment variables
$subscription = '67ed30f7-c635-4fe0-a589-ee84b5460732' # Azure Subscription ID
$resourceGroup = 'githublogicapp-prod' # Azure Resource Group
$keyvaultName = 'githubkeyv-prod' # Azure Keyvault Name
$location = 'westeurope' # Azure Location
$dateTime = Get-Date -Format 'yyyyMMddHHmmss' # Get the current date and time
$deploymentName = 'initialSetup' + $dateTime # Deployment Name with unique timestamp
$servicePrincipalDisplayName = 'sp-githublogicapp-prod' # Service Principal Display Name
```

## Create webhooks in GitHub

***Important***
Ensure that the webhook is setup up from the organisation settings, and not directly from the repository settings.

### Webhook settings

URL to the settings page on GitHub: https://github.com/organizations/{YOURORGNAME}/settings/hooks

| Name         | Value                                                        |
|--------------|--------------------------------------------------------------|
| Payload URL  | https://prod-xx.westeurope.logic.azure.com:443/workflows/xxx |
| Content type | application/json                                             |
| Secret       | *blank*                                                      |
| SSL          | Enable SSL Verification                                      |
| Which events | Repositories                                                 |

When the Webhook is configured initially it will post a payload to the URL specified. The payload will not cause the Logic App in Azure to perform any changes because it checks for "Created" actions, but now is a good time to verify that the payload was delivered to Azure. This can both be viewed directly from the webhook under "Recent Deliveries" or on the Logic App in the Azure Portal on the overview page.

Create a new test repository to verify that the webhook is working, and performs the expected actions.
