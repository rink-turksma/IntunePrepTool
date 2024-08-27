<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2024 v5.8.238
	 Created on:   	27-8-2024 16:39
	 Created by:   	Rink Turksma
	 Organization: 	
	 Filename:     	addAppRegPlainText.ps1
	===========================================================================
	.DESCRIPTION
		A description of the file.
#>
param
(
	[parameter(Mandatory = $true)]
	[string]$appRegName,
	[string]$customername
)
#Requires -RunAsAdministrator
Import-Module -Name IntuneWin32App -RequiredVersion 1.4.4 -Force
Import-Module -Name Microsoft.Graph.Authentication -RequiredVersion 2.18.0 -Force
Import-Module -Name Microsoft.Graph.Applications -RequiredVersion 2.18.0 -Force
Import-Module -Name Microsoft.Graph.Identity.SignIns -RequiredVersion 2.18.0 -Force

$customerloc = "C:\Users\$env:username\.IntunePrepTool\$customername.csv"


class config_tenantinfo {
	[string]$customername
	[string]$appRegName
	[string]$tenantID
	[string]$appId
	[string]$clientsecret
	[datetime]$validdate
}


Connect-MgGraph -Scopes "Application.Read.All", "Application.ReadWrite.All", "User.Read.All", "Application.ReadWrite.All", "AppRoleAssignment.ReadWrite.All" -ContextScope Process -NoWelcome
$tenantInfo = Get-MgContext

$requiredResourceAccess = @{
	'resourceAccess' = @(
		@{
			'id'   = "78145de6-330d-4800-a6ce-494ff2d33d07"
			'type' = "Role"
		},
		@{
			'id'   = "01d4889c-1287-42c6-ac1f-5d1e02578ef6"
			'type' = "Role"
		}
		
		
		
	)
	'resourceAppId'  = "00000003-0000-0000-c000-000000000000"
}
try
{
	$appInfo = New-MgApplication -DisplayName $appRegName -RequiredResourceAccess $requiredResourceAccess
}
catch
{
	$_.Exception | Format-List -Force
	$_.Exception.InnerException
}


$appId = $appInfo.Id
$appID2 = Get-MgApplication -ApplicationId $appID
$passwordCredential = @{
	"displayName" = $appRegName
	"endDateTime" = (Get-Date).AddMonths(+ 12)
}
$clientSecret = Add-MgApplicationPassword -ApplicationId ($appInfo.Id) -PasswordCredential $passwordCredential

$tenantID = $tenantInfo.TenantId
$appID = $appInfo.AppId
$clientSecret = $clientSecret.SecretText
$username = $appInfo.AppId
$password = $clientSecret.SecretText
$config_tenantinfo = $null;
$config_tenantinfo += @([config_tenantinfo]@{
		customername    = $customername
		appRegName	    = $appRegName
		tenantID	    = $tenantID
		appID		    = $appId
		clientsecret    = $clientSecret
		validdate    = (Get-Date).AddMonths(+ 12)
		
	})





$graphSpId = $(Get-MgServicePrincipal -Filter "appId eq '00000003-0000-0000-c000-000000000000'").Id
$sp = New-MgServicePrincipal -AppId $appInfo.appId
try
{
	New-MgServicePrincipalAppRoleAssignment -ServicePrincipalId $sp.Id -PrincipalId $sp.Id -AppRoleId "78145de6-330d-4800-a6ce-494ff2d33d07" -ResourceId $graphSpId -erroraction Stop
	New-MgServicePrincipalAppRoleAssignment -ServicePrincipalId $sp.Id -PrincipalId $sp.Id -AppRoleId "01d4889c-1287-42c6-ac1f-5d1e02578ef6" -ResourceId $graphSpId -erroraction Stop
	write-host "App Registration done!"
	$config_tenantinfo2 = [PSCustomObject]@{ customername  = $customername; target = "plain"}
	$config_tenantinfo2 | Export-Csv "c:\users\$env:username\.IntunePrepTool\config_tenantinfo.csv" -NoTypeInformation -append
	$config_tenantinfo | export-csv $customerloc -NoTypeInformation -Force
}
catch
{
	$_.Exception | Format-List -Force
	$_.Exception.InnerException
}

