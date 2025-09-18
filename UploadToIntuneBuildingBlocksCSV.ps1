<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2025 v5.9.253
	 Created on:   	22-4-2025 22:06
	 Created by:   	rink Turksma
	 Organization: 	https://github.com/rink-turksma/IntunePrepTool
	 Filename:     	UploadToIntuneBuildingBlocksCSV.ps1
	===========================================================================
	.DESCRIPTION
		Powershell module: https://github.com/MSEndpointMgr/IntuneWin32App needed for this.
#>
param (
	[Parameter(Mandatory = $true)]
	[string]$buildingblocks_csv_path,
	[Parameter(Mandatory = $true)]
	[string]$TenantName,
	[Parameter()]
	[string]$AvailableAllUsers,
	[Parameter()]
	[string]$RequiredAllDevices
)


#Requires -RunAsAdministrator
#Installatie Powershell Modules
$RequiredPSModules = get-content "C:\Program Files\IntunePrepTool\InstallReqPSModules.txt"
if ($RequiredPSModules -like 'false')
{
	write-error 'Missing required Powershell Modules'
	start-sleep 60
	exit
}
Write-host "First we logon to the Microsoft Tenant"
Write-host "`r`n"
Write-host "`r`n"

try
{
	$load_import_csv = Import-Csv "c:\users\$env:username\.IntunePrepTool\config_tenantinfo.csv" -ErrorAction Stop
}
catch
{
	Write-Error "Error loading csv file c:\users\$env:username\.IntunePrepTool\config_tenantinfo.csv"
	start-sleep 60
	exit
}


foreach ($load in $load_import_csv)
{
	if ($load.customername -eq $tenantName)
	{
		
		if ($load.target -ne 'plain')
		{
			$checkCredLoad = Get-StoredCredential -Target $load.target -AsCredentialObject
			$tenantID = $checkCredLoad.TargetName
			$tenantID = $tenantID.Split("_")[1]
			$AppId = $checkCredLoad.UserName
			$Secret = $checkCredLoad.Password
		}
		else
		{
			$cust = import-csv "c:\users\$env:username\.IntunePrepTool\$tenantname.csv"
			$tenantID = $cust.tenantID
			$AppId = $cust.appId
			$Secret = $cust.clientsecret
			$customPrivacyURL = $cust.customPrivacyURL
			
		}
	}
}
try
{
	Connect-MSIntuneGraph -TenantID $tenantID -ClientID $appID -ClientSecret $secret -ErrorAction Stop
}
catch
{
	Write-Error "No Connection to tenant. Please check app registration!!"
	start-sleep 60
	exit
}
$blocks = Import-Csv $buildingblocks_csv_path

foreach ($block in $blocks)
{
	if ($block.systemcontext -eq "True" -and $block.usercontext -eq "True")
	{
		
		$sysConfig = $block.systemcontextconfig
		Write-Host "Processing system context from $sysConfig" -ForegroundColor Cyan
		$ConfigCSVImport = Import-Csv $sysConfig
		$itwnf = $ConfigCSVImport.IntuneWinFile
		$filepath = $sysConfig.TrimEnd("config.csv")
		$itwnffilepath = $filepath + $itwnf
		$descriptionpath = $filepath + 'Description.txt'
		if (Test-Path $descriptionpath)
		{
			[string]$description = Get-Content $descriptionpath
		}
		else
		{
			$description = "The package has been uploaded using the IntunePrepTool."
		}
		$regKeyApp = $ConfigCSVImport.regLocation
		$versie = $ConfigCSVImport.AppVersion
		$regvalue = $ConfigCSVImport.RegValue
		$dnam = $ConfigCSVImport.DisplayName
		$publ = $ConfigCSVImport.Publisher
		$icmd = $ConfigCSVImport.installCMD
		$ucmd = $ConfigCSVImport.uninstallCMD
		if ($ConfigCSVImport.context)
		{
			$context = $ConfigCSVImport.context
		}
		else
		{
			$context = 'system'
		}
		
		$logoaanwezig = get-childitem "$filepath\logo.png" -ErrorAction SilentlyContinue
		if ($logoaanwezig -eq $null) { write-host "No Logo.PNG found in Output Directory" -ForegroundColor Green; Write-host "`r`n"; Write-host "`r`n"; }
		else
		{
			$icon = New-IntuneWin32AppIcon -FilePath "$filepath\logo.png"
		}
		
		$DetectionRule = New-IntuneWin32AppDetectionRuleRegistry -StringComparison -KeyPath $regkeyApp -ValueName $regvalue -StringComparisonOperator equal -StringComparisonValue $versie
		$RequirementRule = New-IntuneWin32AppRequirementRule -Architecture "All" -MinimumSupportedWindowsRelease "W10_20H2"
		write-host "We will first check if there are any apps already available in Intune with the same DisplayName" -ForegroundColor Green; Write-host "`r`n"; Write-host "`r`n";
		$Win32AppEvtVorigeVersies = Get-IntuneWin32App -DisplayName $dnam -Verbose
		if ($Win32AppEvtVorigeVersies -ne $null)
		{
			write-host "Already version(s) found " -ForegroundColor Green; Write-host "`r`n"; Write-host "`r`n";
			$evtvversie = $Win32AppEvtVorigeVersies.DisplayVersion
			write-host $evtvversie
			$alversieAppAanwezig = $true;
			write-host "After uploading new version you can choose Superseedence in this script" -ForegroundColor Green; Write-host "`r`n"; Write-host "`r`n";
		}
		
		else
		{
			$alversieAppAanwezig = $false;
		}
		
		write-host "We will upload to Intune now" -ForegroundColor Green; Write-host "`r`n"; Write-host "`r`n";
		if ($logoaanwezig -eq $null)
		{
			if ($customPrivacyURL -ne $null) -and ($customPrivacyURL -notlike ''))
			{
				$Win32App = Add-IntuneWin32App -FilePath $itwnffilepath -DisplayName $dnam -Description $description -Publisher $publ -AppVersion $versie -InstallExperience $context -RestartBehavior "suppress" -DetectionRule $DetectionRule -InstallCommandLine $icmd -UninstallCommandLine $ucmd -RequirementRule $RequirementRule -PrivacyURL $customPrivacyURL
				
			}
			else
			{
				$Win32App = Add-IntuneWin32App -FilePath $itwnffilepath -DisplayName $dnam -Description $description -Publisher $publ -AppVersion $versie -InstallExperience $context -RestartBehavior "suppress" -DetectionRule $DetectionRule -InstallCommandLine $icmd -UninstallCommandLine $ucmd -RequirementRule $RequirementRule
			}
		}
		else
		{
			if ($customPrivacyURL -ne $null) -and ($customPrivacyURL -notlike ''))
			{
				$Win32App = Add-IntuneWin32App -FilePath $itwnffilepath -DisplayName $dnam -Description $description -Publisher $publ -AppVersion $versie -Icon $Icon -InstallExperience $context -RestartBehavior "suppress" -DetectionRule $DetectionRule -InstallCommandLine $icmd -UninstallCommandLine $ucmd -RequirementRule $RequirementRule -PrivacyURL $customPrivacyURL
			}
			else
			{
				$Win32App = Add-IntuneWin32App -FilePath $itwnffilepath -DisplayName $dnam -Description $description -Publisher $publ -AppVersion $versie -Icon $Icon -InstallExperience $context -RestartBehavior "suppress" -DetectionRule $DetectionRule -InstallCommandLine $icmd -UninstallCommandLine $ucmd -RequirementRule $RequirementRule
			}
		}
		if ($context -like 'system')
		{
			$systemcontextID = $Win32App.Id
		}
		if ($context -like 'user')
		{
			$usercontextID = $Win32App.Id
		}
		Write-host "First System context app now available.. Please wait while we continue with the second" -ForegroundColor Green; Write-host "`r`n"; Write-host "`r`n";
		Start-Sleep 5
		
		$userConfig = $block.usercontextconfig
		Write-Host "Processing user context from $userConfig" -ForegroundColor Cyan
		$ConfigCSVImport = $null;
		$ConfigCSVImport = Import-Csv $userConfig
		$itwnf = $null;
		$itwnf = $ConfigCSVImport.IntuneWinFile
		$filepath = $userConfig.TrimEnd("config.csv")
		$itwnffilepath = $filepath + $itwnf
		$regKeyApp = $ConfigCSVImport.regLocation
		$versie = $ConfigCSVImport.AppVersion
		$regvalue = $ConfigCSVImport.RegValue
		$dnam = $ConfigCSVImport.DisplayName
		$publ = $ConfigCSVImport.Publisher
		$icmd = $ConfigCSVImport.installCMD
		$ucmd = $ConfigCSVImport.uninstallCMD
		if ($ConfigCSVImport.context)
		{
			$context = $ConfigCSVImport.context
		}
		else
		{
			$context = 'system'
		}
		
		$DetectionRule = New-IntuneWin32AppDetectionRuleRegistry -StringComparison -KeyPath $regkeyApp -ValueName $regvalue -StringComparisonOperator equal -StringComparisonValue $versie
		$RequirementRule = New-IntuneWin32AppRequirementRule -Architecture "All" -MinimumSupportedWindowsRelease "W10_20H2"
		write-host "We will upload to Intune now" -ForegroundColor Green; Write-host "`r`n"; Write-host "`r`n";
		start-sleep 5
		$success = $false
		do
		{
			try
			{
				Write-Host "Uploading Win32 app..." -ForegroundColor Cyan
				if ($logoaanwezig -eq $null)
				{
					$Win32App = Add-IntuneWin32App -FilePath $itwnffilepath `
												   -DisplayName $dnam `
												   -Description $description `
												   -Publisher $publ `
												   -AppVersion $versie `
												   -InstallExperience $context `
												   -RestartBehavior "suppress" `
												   -DetectionRule $DetectionRule `
												   -InstallCommandLine $icmd `
												   -UninstallCommandLine $ucmd `
												   -RequirementRule $RequirementRule
				}
				else
				{
					$Win32App = Add-IntuneWin32App -FilePath $itwnffilepath `
												   -DisplayName $dnam `
												   -Description $description `
												   -Publisher $publ `
												   -AppVersion $versie `
												   -Icon $Icon `
												   -InstallExperience $context `
												   -RestartBehavior "suppress" `
												   -DetectionRule $DetectionRule `
												   -InstallCommandLine $icmd `
												   -UninstallCommandLine $ucmd `
												   -RequirementRule $RequirementRule
				}
				$success = $true
			}
			catch
			{
				Write-Host "Upload failed. Retrying in 10 seconds..." -ForegroundColor Yellow
				Start-Sleep 10
			}
		}
		while (-not $success)
		if ($context -like 'system')
		{
			$systemcontextID = $Win32App.Id
		}
		if ($context -like 'user')
		{
			$usercontextID = $Win32App.Id
		}
		Write-Host "Please wait while we setup depedencies." -ForegroundColor Green
		Start-Sleep 5
		$maxAttempts = 5
		$attempt = 0
		$intunewinApp = $null
		$intunewinAppSystem = $null
		$intunewinAppUser = $null
		
		do
		{
			try
			{
				$intunewinApp = Get-IntuneWin32App -DisplayName $dnam -ErrorAction Stop
				
				# Splitsen in system en user context zodra $intunewinApp succesvol is opgehaald
				if ($intunewinApp)
				{
					$intunewinAppSystem = $intunewinApp | Where-Object { $_.installExperience.runAsAccount -like 'system' }
					$intunewinAppUser = $intunewinApp | Where-Object { $_.installExperience.runAsAccount -like 'user' }
				}
				
				if (-not $intunewinAppSystem -or -not $intunewinAppUser)
				{
					Write-Host "Both app types not found yet. Retrying in 10 seconds..."
					Start-Sleep -Seconds 10
				}
				
			}
			catch
			{
				Write-Host "Attempt $($attempt + 1) failed. Retrying in 10 seconds..."
				Start-Sleep -Seconds 10
			}
			
			$attempt++
			
		}
		while ((-not $intunewinAppSystem -or -not $intunewinAppUser) -and $attempt -lt $maxAttempts)
		
		if ($intunewinAppSystem -and $intunewinAppUser)
		{
			Write-Host "Both app types found after $attempt attempts."
		}
		else
		{
			Write-Warning "Not all app types were found after $maxAttempts attempts."
		}
		
		Write-Host "Setting dependency: $($intunewinAppUser.DisplayName) -> $($intunewinAppSystem.DisplayName)" -ForegroundColor Cyan
		$dependency = New-IntuneWin32AppDependency -DependencyType AutoInstall -ID $intunewinAppSystem.ID
		Add-IntuneWin32AppDependency -ID $intunewinAppUser.Id -Dependency $dependency -Confirm:$false
		
		if ($AvailableAllUsers -like 'True')
		{
			do
			{
				Write-Host "Assigning user context app..." -ForegroundColor Cyan
				$success = $true
				try
				{
					Add-IntuneWin32AppAssignmentAllUsers -ID $intunewinAppUser.Id -Intent available -Notification showAll -Verbose -ErrorAction Stop
				}
				catch
				{
					Write-Host "Assignment failed. Retrying in 10 seconds..." -ForegroundColor Yellow
					Start-Sleep 10
					$success = $false
				}
			}
			while (-not $success)
			
		}
		if ($RequiredAllDevices -like 'True')
		{
			do
			{
				Write-Host "Assigning user context app..." -ForegroundColor Cyan
				$success = $true
				try
				{
					
					Add-IntuneWin32AppAssignmentAllDevices -ID $intunewinAppUser.Id -Intent required -Notification hideAll -Verbose
				}
				catch
				{
					Write-Host "Assignment failed. Retrying in 10 seconds..." -ForegroundColor Yellow
					Start-Sleep 10
					$success = $false
				}
			}
			while (-not $success)
			
		}
	}
	if ($block.systemcontext -eq "True" -and $block.usercontext -eq "False")
	{
		$sysConfig = $block.systemcontextconfig
		Write-Host "Processing system context from $sysConfig" -ForegroundColor Cyan
		$ConfigCSVImport = Import-Csv $sysConfig
		$itwnf = $ConfigCSVImport.IntuneWinFile
		$filepath = $sysConfig.TrimEnd("config.csv")
		$itwnffilepath = $filepath + $itwnf
		$descriptionpath = $filepath + 'Description.txt'
		if (Test-Path $descriptionpath)
		{
			[string]$description = Get-Content $descriptionpath
		}
		else
		{
			$description = "The package has been uploaded using the IntunePrepTool."
		}
		$regKeyApp = $ConfigCSVImport.regLocation
		$versie = $ConfigCSVImport.AppVersion
		$regvalue = $ConfigCSVImport.RegValue
		$dnam = $ConfigCSVImport.DisplayName
		$publ = $ConfigCSVImport.Publisher
		$icmd = $ConfigCSVImport.installCMD
		$ucmd = $ConfigCSVImport.uninstallCMD
		if ($ConfigCSVImport.context)
		{
			$context = $ConfigCSVImport.context
		}
		else
		{
			$context = 'system'
		}
		
		$logoaanwezig = get-childitem "$filepath\logo.png" -ErrorAction SilentlyContinue
		if ($logoaanwezig -eq $null) { write-host "No Logo.PNG found in Output Directory" -ForegroundColor Green; Write-host "`r`n"; Write-host "`r`n"; }
		else
		{
			$icon = New-IntuneWin32AppIcon -FilePath "$filepath\logo.png"
		}
		
		$DetectionRule = New-IntuneWin32AppDetectionRuleRegistry -StringComparison -KeyPath $regkeyApp -ValueName $regvalue -StringComparisonOperator equal -StringComparisonValue $versie
		$RequirementRule = New-IntuneWin32AppRequirementRule -Architecture "All" -MinimumSupportedWindowsRelease "W10_20H2"
		write-host "We will first check if there are any apps already available in Intune with the same DisplayName" -ForegroundColor Green; Write-host "`r`n"; Write-host "`r`n";
		$Win32AppEvtVorigeVersies = Get-IntuneWin32App -DisplayName $dnam -Verbose
		if ($Win32AppEvtVorigeVersies -ne $null)
		{
			write-host "Already version(s) found " -ForegroundColor Green; Write-host "`r`n"; Write-host "`r`n";
			$evtvversie = $Win32AppEvtVorigeVersies.DisplayVersion
			write-host $evtvversie
			$alversieAppAanwezig = $true;
			write-host "After uploading new version you can choose Superseedence in this script" -ForegroundColor Green; Write-host "`r`n"; Write-host "`r`n";
		}
		
		else
		{
			$alversieAppAanwezig = $false;
		}
		
		write-host "We will upload to Intune now" -ForegroundColor Green; Write-host "`r`n"; Write-host "`r`n";
		if ($logoaanwezig -eq $null)
		{
			if ($customPrivacyURL -ne $null) -and ($customPrivacyURL -notlike ''))
			{
				$Win32App = Add-IntuneWin32App -FilePath $itwnffilepath -DisplayName $dnam -Description $description -Publisher $publ -AppVersion $versie -InstallExperience $context -RestartBehavior "suppress" -DetectionRule $DetectionRule -InstallCommandLine $icmd -UninstallCommandLine $ucmd -RequirementRule $RequirementRule -PrivacyURL $customPrivacyURL
			}
			else
			{
				$Win32App = Add-IntuneWin32App -FilePath $itwnffilepath -DisplayName $dnam -Description $description -Publisher $publ -AppVersion $versie -InstallExperience $context -RestartBehavior "suppress" -DetectionRule $DetectionRule -InstallCommandLine $icmd -UninstallCommandLine $ucmd -RequirementRule $RequirementRule
			}
		}
		else
		{
			if ($customPrivacyURL -ne $null) -and ($customPrivacyURL -notlike ''))
			{
				$Win32App = Add-IntuneWin32App -FilePath $itwnffilepath -DisplayName $dnam -Description $description -Publisher $publ -AppVersion $versie -Icon $Icon -InstallExperience $context -RestartBehavior "suppress" -DetectionRule $DetectionRule -InstallCommandLine $icmd -UninstallCommandLine $ucmd -RequirementRule $RequirementRule -PrivacyURL $customPrivacyURL
			}
			else
			{
				$Win32App = Add-IntuneWin32App -FilePath $itwnffilepath -DisplayName $dnam -Description $description -Publisher $publ -AppVersion $versie -Icon $Icon -InstallExperience $context -RestartBehavior "suppress" -DetectionRule $DetectionRule -InstallCommandLine $icmd -UninstallCommandLine $ucmd -RequirementRule $RequirementRule
			}
		}
		if ($context -like 'system')
		{
			$systemcontextID = $Win32App.Id
		}
		if ($context -like 'user')
		{
			$usercontextID = $Win32App.Id
		}
		Write-host "If all is good the app will now be available in Intune" -ForegroundColor Green; Write-host "`r`n"; Write-host "`r`n";
		Start-Sleep 5
		$intunewinApp = Get-IntuneWin32App -DisplayName $dnam
		$intunewinAppSystem = $intunewinApp | where { $_.installExperience.runAsAccount -like 'system' }
		Start-Sleep 5
		if ($AvailableAllUsers -like 'True')
		{
			do
			{
				Write-Host "Assigning user context app..." -ForegroundColor Cyan
				$success = $true
				try
				{
					Add-IntuneWin32AppAssignmentAllUsers -ID $intunewinAppSystem.Id -Intent available -Notification showAll -Verbose -ErrorAction Stop
				}
				catch
				{
					Write-Host "Assignment failed. Retrying in 10 seconds..." -ForegroundColor Yellow
					Start-Sleep 10
					$success = $false
				}
			}
			while (-not $success)
			
		}
		if ($RequiredAllDevices -like 'True')
		{
			do
			{
				Write-Host "Assigning user context app..." -ForegroundColor Cyan
				$success = $true
				try
				{
					
					Add-IntuneWin32AppAssignmentAllDevices -ID $intunewinAppSystem.Id -Intent required -Notification hideAll -Verbose
				}
				catch
				{
					Write-Host "Assignment failed. Retrying in 10 seconds..." -ForegroundColor Yellow
					Start-Sleep 10
					$success = $false
				}
			}
			while (-not $success)
			
		}
		
		
	}
	if ($block.systemcontext -eq "False" -and $block.usercontext -eq "True")
	{
		$userConfig = $block.usercontextconfig
		Write-Host "Processing system context from $userConfig" -ForegroundColor Cyan
		$ConfigCSVImport = Import-Csv $userConfig
		$itwnf = $ConfigCSVImport.IntuneWinFile
		$filepath = $userConfig.TrimEnd("config.csv")
		$itwnffilepath = $filepath + $itwnf
		$descriptionpath = $filepath + 'Description.txt'
		if (Test-Path $descriptionpath)
		{
			[string]$description = Get-Content $descriptionpath
		}
		else
		{
			$description = "The package has been uploaded using the IntunePrepTool."
		}
		$regKeyApp = $ConfigCSVImport.regLocation
		$versie = $ConfigCSVImport.AppVersion
		$regvalue = $ConfigCSVImport.RegValue
		$dnam = $ConfigCSVImport.DisplayName
		$publ = $ConfigCSVImport.Publisher
		$icmd = $ConfigCSVImport.installCMD
		$ucmd = $ConfigCSVImport.uninstallCMD
		if ($ConfigCSVImport.context)
		{
			$context = $ConfigCSVImport.context
		}
		else
		{
			$context = 'user'
		}
		
		$logoaanwezig = get-childitem "$filepath\logo.png" -ErrorAction SilentlyContinue
		if ($logoaanwezig -eq $null) { write-host "No Logo.PNG found in Output Directory" -ForegroundColor Green; Write-host "`r`n"; Write-host "`r`n"; }
		else
		{
			$icon = New-IntuneWin32AppIcon -FilePath "$filepath\logo.png"
		}
		
		$DetectionRule = New-IntuneWin32AppDetectionRuleRegistry -StringComparison -KeyPath $regkeyApp -ValueName $regvalue -StringComparisonOperator equal -StringComparisonValue $versie
		$RequirementRule = New-IntuneWin32AppRequirementRule -Architecture "All" -MinimumSupportedWindowsRelease "W10_20H2"
		write-host "We will first check if there are any apps already available in Intune with the same DisplayName" -ForegroundColor Green; Write-host "`r`n"; Write-host "`r`n";
		$Win32AppEvtVorigeVersies = Get-IntuneWin32App -DisplayName $dnam -Verbose
		if ($Win32AppEvtVorigeVersies -ne $null)
		{
			write-host "Already version(s) found " -ForegroundColor Green; Write-host "`r`n"; Write-host "`r`n";
			$evtvversie = $Win32AppEvtVorigeVersies.DisplayVersion
			write-host $evtvversie
			$alversieAppAanwezig = $true;
			write-host "After uploading new version you can choose Superseedence in this script" -ForegroundColor Green; Write-host "`r`n"; Write-host "`r`n";
		}
		
		else
		{
			$alversieAppAanwezig = $false;
		}
		
		write-host "We will upload to Intune now" -ForegroundColor Green; Write-host "`r`n"; Write-host "`r`n";
		if ($logoaanwezig -eq $null)
		{
			if ($customPrivacyURL -ne $null) -and ($customPrivacyURL -notlike ''))
			{
				$Win32App = Add-IntuneWin32App -FilePath $itwnffilepath -DisplayName $dnam -Description $description -Publisher $publ -AppVersion $versie -InstallExperience $context -RestartBehavior "suppress" -DetectionRule $DetectionRule -InstallCommandLine $icmd -UninstallCommandLine $ucmd -RequirementRule $RequirementRule -PrivacyURL $customPrivacyURL
			}
			else
			{
				$Win32App = Add-IntuneWin32App -FilePath $itwnffilepath -DisplayName $dnam -Description $description -Publisher $publ -AppVersion $versie -InstallExperience $context -RestartBehavior "suppress" -DetectionRule $DetectionRule -InstallCommandLine $icmd -UninstallCommandLine $ucmd -RequirementRule $RequirementRule
			}
		}
		else
		{
			if ($customPrivacyURL -ne $null) -and ($customPrivacyURL -notlike ''))
			{
				$Win32App = Add-IntuneWin32App -FilePath $itwnffilepath -DisplayName $dnam -Description $description -Publisher $publ -AppVersion $versie -Icon $Icon -InstallExperience $context -RestartBehavior "suppress" -DetectionRule $DetectionRule -InstallCommandLine $icmd -UninstallCommandLine $ucmd -RequirementRule $RequirementRule -PrivacyURL $customPrivacyURL
			}
			else
			{
				$Win32App = Add-IntuneWin32App -FilePath $itwnffilepath -DisplayName $dnam -Description $description -Publisher $publ -AppVersion $versie -Icon $Icon -InstallExperience $context -RestartBehavior "suppress" -DetectionRule $DetectionRule -InstallCommandLine $icmd -UninstallCommandLine $ucmd -RequirementRule $RequirementRule
			}
		}
		if ($context -like 'system')
		{
			$systemcontextID = $Win32App.Id
		}
		if ($context -like 'user')
		{
			$usercontextID = $Win32App.Id
		}
		Write-host "If all is good the app will now be available in Intune" -ForegroundColor Green; Write-host "`r`n"; Write-host "`r`n";
		Start-Sleep 5
		$intunewinApp = Get-IntuneWin32App -DisplayName $dnam
		$intunewinAppUser = $intunewinApp | where { $_.installExperience.runAsAccount -like 'user' }
		Start-Sleep 5
		if ($AvailableAllUsers -like 'True')
		{
			do
			{
				Write-Host "Assigning user context app..." -ForegroundColor Cyan
				$success = $true
				try
				{
					Add-IntuneWin32AppAssignmentAllUsers -ID $intunewinAppUser.Id -Intent available -Notification showAll -Verbose -ErrorAction Stop
				}
				catch
				{
					Write-Host "Assignment failed. Retrying in 10 seconds..." -ForegroundColor Yellow
					Start-Sleep 10
					$success = $false
				}
			}
			while (-not $success)
			
		}
		if ($RequiredAllDevices -like 'True')
		{
			do
			{
				Write-Host "Assigning user context app..." -ForegroundColor Cyan
				$success = $true
				try
				{
					
					Add-IntuneWin32AppAssignmentAllDevices -ID $intunewinAppUser.Id -Intent required -Notification hideAll -Verbose
				}
				catch
				{
					Write-Host "Assignment failed. Retrying in 10 seconds..." -ForegroundColor Yellow
					Start-Sleep 10
					$success = $false
				}
			}
			while (-not $success)
			
		}
		
	}
	
}
Write-Host "All Done"



