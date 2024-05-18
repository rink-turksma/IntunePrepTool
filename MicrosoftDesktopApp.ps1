<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2024 v5.8.242
	 Created on:   	17-5-2024 16:03
	 Created by:   	Rink Turksma
	 Organization: 	
	 Filename:     	MicrosoftDesktopApp.ps1
	===========================================================================
	.DESCRIPTION
		#Install https://github.com/microsoft/winget-cli/releases
#>

$IntunePrepToolInstallPath = 'C:\Program Files\IntunePrepTool'
Set-Location $IntunePrepToolInstallPath
$WingetMSIXPath = Join-Path -Path $IntunePrepToolInstallPath -ChildPath "Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle"
if (!(Test-Path $WingetMSIXPath))
{
	
	
	$WingetUrl = "https://github.com/microsoft/winget-cli/releases/download/v1.7.11261/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle"
	
	Write-Host "Please wait; Downloading Winget-cli: https://github.com/microsoft/winget-cli/releases/download/v1.7.11261/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle" -ForegroundColor Green
	try
	{
		Start-BitsTransfer -Source $WingetUrl -Destination $WingetMSIXPath -Priority High -ErrorAction Stop
	}
	catch
	{
		$_.Exception | Format-List -Force
		$_.Exception.InnerException
	}
	
	
	if (Test-Path -Path $WingetMSIXPath)
	{
		Write-Host "Winget has been downloaded successfully at $WingetMSIXPath"
	}
	else
	{
		Write-Host "Winget download failed"
	}
}
try
{
	Add-ProvisionedAppxPackage -online -PackagePath $WingetMSIXPath -SkipLicense -ErrorAction Stop
	Start-Sleep 5
	$ResolveWingetPath = Resolve-Path "C:\Program Files\WindowsApps\Microsoft.DesktopAppInstaller_*_x64__8wekyb3d8bbwe\winget.exe"
	if ($ResolveWingetPath)
	{
		$WingetPath = $ResolveWingetPath[-1].Path
	}
	$wingetexe = $ResolveWingetPath
	
	if (Test-path $wingetexe)
	{
		Write-host "Installation Winget success."
		Write-Host "Winget now testing and accepting-source-agreements"
		& $wingetexe search rink-turksma.IntunePrepTool --accept-source-agreements
	}
	else
	{
		Write-Host "Installation Winget Failed."
	}
}
catch
{
	$_.Exception | Format-List -Force
	$_.Exception.InnerException
	Write-Host "An error occurred during the installation of Winget."
}
