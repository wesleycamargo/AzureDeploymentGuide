$random = Get-Random -Minimum 1000 -Maximum 9999

$resourceGroup =  "RG-AzureDeploymentGuide-$random"
$location = "northeurope"
$appServicePlan = "sp-azuredeploymentguide-$random"
$appService = "wa-azuredeploymentguide-$random"

az group create --name $resourceGroup --location $location

az appservice plan create --name $appServicePlan --resource-group $resourceGroup --sku F1

az webapp create --name $appService --resource-group $resourceGroup --plan $appServicePlan