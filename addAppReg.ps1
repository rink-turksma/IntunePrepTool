<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2024 v5.8.238
	 Created on:   	3-5-2024 16:39
	 Created by:   	Rink Turksma
	 Organization: 	
	 Filename:     	addAppReg.ps1
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
class config_tenantinfo {
	[string]$customername
	[string]$target
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
$target = $appRegName + "_" + $tenantInfo.TenantId
$username = $appInfo.AppId
$password = $clientSecret.SecretText
$securePassword = ConvertTo-SecureString -String $password -AsPlainText -Force
$credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $username, $securePassword
try
{
	$credential | New-StoredCredential -Target $target -Comment $appInfo.PublisherDomain -ErrorAction Stop
}
catch
{
	catch
	{
		$_.Exception | Format-List -Force
		$_.Exception.InnerException
	}
	
}

$config_tenantinfo += @([config_tenantinfo]@{
		customername = $customername
		target	     = $target
		
	})

$config_tenantinfo | Export-Csv "c:\users\$env:username\.IntunePrepTool\config_tenantinfo.csv" -NoTypeInformation -append
$graphSpId = $(Get-MgServicePrincipal -Filter "appId eq '00000003-0000-0000-c000-000000000000'").Id
$sp = New-MgServicePrincipal -AppId $appInfo.appId
try
{
	New-MgServicePrincipalAppRoleAssignment -ServicePrincipalId $sp.Id -PrincipalId $sp.Id -AppRoleId "78145de6-330d-4800-a6ce-494ff2d33d07" -ResourceId $graphSpId -erroraction Stop
	New-MgServicePrincipalAppRoleAssignment -ServicePrincipalId $sp.Id -PrincipalId $sp.Id -AppRoleId "01d4889c-1287-42c6-ac1f-5d1e02578ef6" -ResourceId $graphSpId -erroraction Stop
	write-host "App Registration done!"
	clear-host
}
catch
{
	$_.Exception | Format-List -Force
	$_.Exception.InnerException
}

