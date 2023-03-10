IntunePrepTool 
Created by Rink Turksma with Sapien Powershell Studio.
GUI based powershell script to create and upload Intunewin packages.
Used for unattend installation / uninstallation EXE & MSI.
Also create scripts for Winget packages.
Automatically created install.ps1 and uninstall.ps1 wich you can test and edit in Powershell_ISE with one click.
All generated powershell scripts used in Intunewin files will log Transscript logs to specified locacation. And Also show a succes or warning in the event viewer Powershell log.
Button to create Intunewin file and print detection method in the app.
Which also writes a config.csv file to the package directory.
After you select create Intunewin. You will get the option to select a PNG file.
Then you can use the option for uploading directly to Intune (Uses Powershell modules MSAL.PS from Jason Thompson and IntuneWin32App from Nickolaj Andersen)

How to use:
Download files under Bin\x64:
- IntunePrepTool.exe
- config_customerinfo.csv
- IntuneWinAppUtil.exe (From Microsoft)

Open IntunePrepTool as Administrator.

In the first Tab - Config.

Select the New / Clear button.

Then you can select Customer name, Log Folder target, Package folder (Local) and TenantURL.

Click Save.

Now select the newly created customer also in the tab - Config.

For EXE, MSI and Winget it should be clear how to use this.

After creating the Intunewin package you will get the option to upload a logo. (This is mandatory for the upload to Intune option)
Select a PNG file.

When you want to upload a package to Intune, please use load config.csv from the output package directory. (Location visible when creating package in GUI)

The GUI shows the parameters for installation and detection method.

Use Upload button to open Powershell_ISE. Press start there and you will get a prompt to logon to you tenant.







