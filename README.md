#IntunePrepTool
GUI based PowerShell script to create intunewin packages with MS IntuneWinAppUtil.exe for intune; Source can be MSI, EXE, Winget; Test script; Implement detection method. Transcript logs to predefined location, and logs to EventViewer Application & Services log. 

Update: 21/05/2023
Created by Rink Turksma with Sapien Powershell Studio.

Please update to release: 1.0.3.4 or newer for a fix updating "C:\ProgramData\Microsoft\IntuneManagementExtension\Logs\IntunePrepTool.evtx".

Please update to release: 1.0.3.3 or newer for a fix for uploading. This because Intune now needs a new format for OS Requirements.

- Used for unattended installation / uninstallation EXE & MSI files.
- Create intunewin files from winget sources.
- Create weblink to IntuneWin file.
- Automatically created install.ps1 and uninstall.ps1 witch you can test and edit in Powershell_ISE with one click.
- All generated PowerShell scripts used in Intunewin files will log Transcripts logs to specified location. And also show a Informational or Error in the event viewer IntunePrepTool (Under Application and services) log.
- Log file also located: "C:\ProgramData\Microsoft\IntuneManagementExtension\Logs\IntunePrepTool.evtx"; This so you can use The collect Diagnostics option from the Intune Admin Portal for Windows clients and download the logs of the packages.
- Button to create Intunewin file and print detection method in the app. (Which also writes a config.csv file to the package directory.)
- After you select create Intunewin. You will get the option to select a PNG file.
- Then you can use the option for uploading directly to Intune (Uses PowerShell modules MSAL.PS from Jason Thompson and IntuneWin32App from Nickolaj Andersen)

##How to use: 
- For Local Winget options in the GUI. First test Winget.. Open Powershell as Admin and run something like winget list vlc and accept agreement.
  (For packages this isn't an issue.)
- Be sure to setup Powershell execution policy to unrestricted: Set-ExecutionPolicy Unrestricted
- Donwload latest MSI file. (Unattended MSI file) Run as admin. / or use "winget install rink-turksma.IntunePrepTool" (as Admin)
- Make sure to open file properties and 'Unblock file' for: "C:\Program Files (x86)\IntunePrepTool\IntunePrepTool.exe" and "C:\Program Files (x86)\IntunePrepTool\IntuneWinAppUtil.exe"
- Run IntunePrepTool as Administrator.
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

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/a3af44ef-e27d-4a9b-b354-88900e202771)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/4cd313db-1353-49a4-a837-06c40e6e7d4d)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/cbe19ee2-929d-41ac-af43-e87588bb057f)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/7e70ccb8-ee80-4d5c-a714-6d513f5ea805)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/c4186ec3-073a-4ec9-8192-3341915b0be7)


![image](https://user-images.githubusercontent.com/127322820/234869274-61b21fd2-e0bc-497a-9742-e7859ae4f16b.png)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/1589c0b4-3478-4bf9-ab76-ccf4acdb2f65)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/6a88d37a-9d8b-4c50-a56d-3829e0ea4d7c)



