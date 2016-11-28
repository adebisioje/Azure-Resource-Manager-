### Define variables
{
$location = 'EAST US'
$resourceGroupName = 'arm-simple-paas-template'
$resourceDeploymentName = 'arm-iaas-template-deployment'
$templatePath = 'C:\Users\adoje\Documents\GitHub\Azure-Resource-Manager-\'
$templateFile = 'simpleIaasARMTemplate.json'
$template = $templatePath + '\' + $templateFile
}

### Create Resource Group
{
New-AzureRmResourceGroup `
    -Name $resourceGroupName `
    -Location $Location `
    -Verbose -Force
}

### Deploy Resources
{
New-AzureRmResourceGroupDeployment `
    -Name $resourceDeploymentName `
    -ResourceGroupName $resourceGroupName `
    -TemplateFile $template `
    -Verbose -Force
}