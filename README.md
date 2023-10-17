Update: 10/17/2023

New screenshots with instruction how to use this tool below.

Created by Rink Turksma with Sapien Powershell Studio.

Version 1.2.4.1:
The addition of the option to download Winget packages locally or on UNC path.

Version 1.2.4.0:
1: When opening a downloaded MSI or EXE file the Unblock-file option is now used.
: Addressing the issue related to parsing variables in the MSI install and uninstall script enhances the tool's reliability, ensuring accurate deployment and removal of software packages.

Please use Winget to install the latest version: "winget install rink-turksma.IntunePrepTool" (Run as Admin in CMD or Powershell)
or update using: "winget upgrade rink-turksma.IntunePrepTool"
Or download latest MSI. (Github releases)

- Used for unattended installation / uninstallation EXE & MSI files.
- Create intunewin files from winget sources.
- Create weblink to IntuneWin file.
- Create winget update remediation policy.
- Automatically created install.ps1 and uninstall.ps1 witch you can test and edit in Powershell_ISE with one click.
- All generated PowerShell scripts used in Intunewin files will write transcripts logs to specified location. And also show a Informational or Error in the event viewer IntunePrepTool (Application and services) log.
- Log file also located: "C:\ProgramData\Microsoft\IntuneManagementExtension\Logs\IntunePrepTool.evtx"; This so you can use The collect Diagnostics option from the Intune Admin Portal for Windows clients and download the logs of the packages.
- Button to create Intunewin file, and print detection method in the app. (Which also writes a config.csv file to the package directory.)
- After you select create Intunewin. You will get the option to select a PNG file.
- Then you can use the option for uploading directly to Intune (Uses PowerShell modules MSAL.PS from Jason Thompson and IntuneWin32App from Nickolaj Andersen) (Update 21/05/2023: Version 1.0.3.3 or later needed)

##How to use: 

Verify Local Winget Installation:
Before using the local Winget options in the GUI, ensure Winget is functional. Open PowerShell as an Administrator and run a test command like winget list vlc. Agree to the terms if prompted. (This step is unnecessary for packages.)

Adjust PowerShell Execution Policy:
Set your PowerShell execution policy to unrestricted using the command: Set-ExecutionPolicy Unrestricted.

Install IntunePrepTool:
Download the latest MSI file and run it as an administrator. Alternatively, use the command: winget install rink-turksma.IntunePrepTool (Run as Admin).

Unblock Files:
In file properties, ensure you 'Unblock' the following files:
"C:\Program Files (x86)\IntunePrepTool\IntunePrepTool.exe"
"C:\Program Files (x86)\IntunePrepTool\IntuneWinAppUtil.exe"

Launch IntunePrepTool:
Run IntunePrepTool as an Administrator.

Select Customer Configuration:
Choose the newly created customer configuration in the 'Config' tab.
- In the first Tab - Config: Select the New / Clear button. 
- Then you can select Customer name, Log Folder target, Package folder (Local) and TenantURL.
- Click Save. (Settings are saved in: "C:\Program Files (x86)\IntunePrepTool\config_customerinfo.csv")

- Now select the newly created customer also in the tab - Config.
- For EXE, MSI and Winget it should be clear how to use this.
- After creating the Intunewin package you will get the option to upload a logo. (This is mandatory for the upload to Intune option) Select a PNG file.
- When you want to upload a package to Intune, please use load config.csv from the output package directory. (Location visible when creating package in GUI)
-The GUI shows the parameters for installation and detection method.
- Use Upload button to open Powershell_ISE. Press start there and you will get a prompt to logon to your tenant.

![image](https://user-images.githubusercontent.com/127322820/225110446-ad85e79c-6f0b-4d04-a676-69f83fdc1fdb.png)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/0200af55-3d8a-4caf-b4fd-fa9c90eb9501)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/ae268b9c-25ee-493d-8fb4-288c3bdda69f)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/dea99ee5-65fa-4c51-b2dc-d4a32e635a28)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/b599056b-887b-4d19-835f-b5b634c68842)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/a493d6b3-4b33-4daa-8295-0468e8f36df8)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/d130daf3-22b8-431c-b9ab-5cfe44516d76)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/49f33f18-2443-4ee6-ba5e-ce8069efae13)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/08454bf9-fc10-4288-90fe-f4c61202ba3b)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/276681ee-d408-4ad4-b35c-466d7df20b0d)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/3b4025fb-d28d-409f-8c34-ba2c0f9c0702)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/0bc05477-a181-47f3-8cab-dd48e60cee02)


![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/4cd313db-1353-49a4-a837-06c40e6e7d4d)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/cbe19ee2-929d-41ac-af43-e87588bb057f)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/7e70ccb8-ee80-4d5c-a714-6d513f5ea805)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/c4186ec3-073a-4ec9-8192-3341915b0be7)


![image](https://user-images.githubusercontent.com/127322820/234869274-61b21fd2-e0bc-497a-9742-e7859ae4f16b.png)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/1589c0b4-3478-4bf9-ab76-ccf4acdb2f65)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/dc1ad5d2-cc58-4c87-98b9-e7cf8ffe1d6d)


![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/6a88d37a-9d8b-4c50-a56d-3829e0ea4d7c)



