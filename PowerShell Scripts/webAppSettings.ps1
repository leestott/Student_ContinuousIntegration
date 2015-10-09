
 


$myResourceGroup = 'RESOURCE_GROUP_NAME' 
$mySite = 'SITE_NAME' 
 


Switch-AzureMode AzureResourceManager 
Get-AzureAccount 
 


(Invoke-AzureResourceAction -ResourceGroupName $myResourceGroup ` 
 -ResourceType Microsoft.Web/sites/Config -Name $mySite/appsettings ` 
 -Action list -ApiVersion 2015-08-01 -Force).Properties 
 


$props = (Invoke-AzureResourceAction -ResourceGroupName $myResourceGroup ` 
 -ResourceType Microsoft.Web/sites/Config -Name $mySite/appsettings ` 
 -Action list -ApiVersion 2015-08-01 -Force).Properties 
 


$hash = @{} 
 $props | Get-Member -MemberType NoteProperty | % { $hash[$_.Name] = $props.($_.Name) } 
 


$hash.NewKey = "NewValue" 
$hash.ExistingKey = "NewValue" 
 


Switch-AzureMode AzureServiceManagement 
Set-AzureWebsite -Name $mySite -AppSettings $hash 
