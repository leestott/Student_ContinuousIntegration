
#new webapp script 


 


[CmdletBinding()] 


Param( 


  [Parameter(Mandatory=$True)] 


  [string]$myapp, 


 [Parameter(Mandatory=$True)] 


  [string]$appplan, 


 [Parameter(Mandatory=$True)] 


  [string]$apploc, 


 [Parameter(Mandatory=$True)] 


  [string]$rgname, 


 [Parameter(Mandatory=$True)] 


  [string]$username, 


  [Parameter(Mandatory=$True)] 


 [string]$password, 


 [Parameter(Mandatory=$True)] 


 [string]$publishfile 


 ) 


  


 Import-AzurePublishSettingsFile $publishfile 


 Switch-AzureMode -name AzureResourceManager 


 New-AzureResourceGroup -Name $rgname -Location $apploc 


 New-AzureWebApp -AppServicePlan $appplan -Location $apploc -Name $myapp -ResourceGroupName $rgname  
