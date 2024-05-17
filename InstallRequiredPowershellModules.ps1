<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2024 v5.8.242
	 Created on:   	17-5-2024 15:24
	 Created by:   	Rink Turksma
	 Organization: 	
	 Filename:     	InstallRequiredPowershellModules.ps1
	===========================================================================
	.DESCRIPTION
		A description of the file.
#>


#Nuget installation
$nugetUrl = "https://dist.nuget.org/win-x86-commandline/latest/nuget.exe"
$nugetInstallPath = "$env:ProgramFiles\NuGet"
if (-not (Test-Path -Path $nugetInstallPath))
{
	New-Item -ItemType Directory -Path $nugetInstallPath -Force
}
$nugetExePath = Join-Path -Path $nugetInstallPath -ChildPath "nuget.exe"
Invoke-WebRequest -Uri $nugetUrl -OutFile $nugetExePath
if (Test-Path -Path $nugetExePath)
{
	Write-Host "NuGet has been installed successfully at $nugetExePath"
}
else
{
	Write-Host "NuGet installation failed"
}
$path = [Environment]::GetEnvironmentVariable("Path", [System.EnvironmentVariableTarget]::Machine)
if ($path -notlike "*$nugetInstallPath*")
{
	[Environment]::SetEnvironmentVariable("Path", "$path;$nugetInstallPath", [System.EnvironmentVariableTarget]::Machine)
	Write-Host "NuGet has been added to the system PATH"
}
else
{
	Write-Host "NuGet is already in the system PATH"
}
& $nugetExePath | Select-String "NuGet Version"


Get-PackageProvider -Name Nuget -Force

#Installation Powershell Modules
Write-Host "Script will install IntuneWin32App powershell module from the Powershell Gallery if needed." -ForegroundColor Green
if (Get-Module -ListAvailable -Name IntuneWin32App)
{
	$moduleVersion = Get-Module -ListAvailable -Name IntuneWin32App
	
	if (($moduleVersion.Version.Major -eq 1) -and ($moduleVersion.Version.Minor -eq 4) -and ($moduleVersion.Version.Build -eq 4))
	{
		Write-Host "IntuneWin32App 1.4.4 already installed"
	}
}
else
{
	Write-Host "Required Module and Version not found.. Now installing"
	Install-Module -Name IntuneWin32App -Scope AllUsers -RequiredVersion 1.4.4 -Force -SkipPublisherCheck -Confirm:$False
	
}

Write-Host "Script will install Microsoft.Graph.Authentication powershell module from the Powershell Gallery if needed." -ForegroundColor Green
if (Get-Module -ListAvailable -Name Microsoft.Graph.Authentication)
{
	$moduleVersion = Get-Module -ListAvailable -Name Microsoft.Graph.Authentication
	
	if (($moduleVersion.Version.Major -eq 2) -and ($moduleVersion.Version.Minor -eq 18) -and ($moduleVersion.Version.Build -eq 0))
	{
		Write-Host "Microsoft.Graph.Authentication 2.18.0 already installed"
	}
}
else
{
	Write-Host "Required Module and Version not found.. Now installing"
	Install-Module -Name Microsoft.Graph.Authentication -Scope AllUsers -RequiredVersion 2.18.0 -Force -SkipPublisherCheck -Confirm:$False
	
}

Write-Host "Script will install Microsoft.Graph.Applications powershell module from the Powershell Gallery if needed." -ForegroundColor Green
if (Get-Module -ListAvailable -Name Microsoft.Graph.Applications)
{
	$moduleVersion = Get-Module -ListAvailable -Name Microsoft.Graph.Applications
	
	if (($moduleVersion.Version.Major -eq 2) -and ($moduleVersion.Version.Minor -eq 18) -and ($moduleVersion.Version.Build -eq 0))
	{
		Write-Host "Microsoft.Graph.Applications 2.18.0 already installed"
	}
}
else
{
	Write-Host "Required Module and Version not found.. Now installing"
	Install-Module -Name Microsoft.Graph.Applications -Scope AllUsers -RequiredVersion 2.18.0 -Force -SkipPublisherCheck -Confirm:$False
	
}

Write-Host "Script will install CredentialManager powershell module from the Powershell Gallery if needed." -ForegroundColor Green
if (Get-Module -ListAvailable -Name CredentialManager)
{
	$moduleVersion = Get-Module -ListAvailable -Name CredentialManager
	
	if (($moduleVersion.Version.Major -eq 2) -and ($moduleVersion.Version.Minor -eq 0) -and ($moduleVersion.Version.Build -eq 0))
	{
		Write-Host "CredentialManager 2.0.0 Powershell module already installed"
	}
}
else
{
	Write-Host "Required Module and Version not found.. Now installing"
	Install-Module -Name CredentialManager -Scope AllUsers -RequiredVersion 2.0.0 -Force -SkipPublisherCheck -Confirm:$False
	
}
Write-Host "Script will install Microsoft.Graph.Identity.SignIns powershell module from the Powershell Gallery if needed." -ForegroundColor Green
if (Get-Module -ListAvailable -Name Microsoft.Graph.Identity.SignIns)
{
	$moduleVersion = Get-Module -ListAvailable -Name Microsoft.Graph.Identity.SignIns
	
	if (($moduleVersion.Version.Major -eq 2) -and ($moduleVersion.Version.Minor -eq 18) -and ($moduleVersion.Version.Build -eq 0))
	{
		Write-Host "Microsoft.Graph.Identity.SignIns 2.18.0 Powershell Module already installed"
	}
}
else
{
	Write-Host "Required Module and Version not found.. Now installing"
	Install-Module -Name Microsoft.Graph.Identity.SignIns -Scope AllUsers -RequiredVersion 2.18.0 -Force -SkipPublisherCheck -Confirm:$False
	
}






