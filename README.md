#IntunePrepTool
GUI based PowerShell script to create intunewin packages with MS IntuneWinAppUtil.exe for intune; Source can be MSI, EXE, Winget; Test script; Inplement detection method. Transcript logs to predefined location.

Update: 12/05/2023
Created by Rink Turksma with Sapien Powershell Studio.

- Used for unattended installation / uninstallation EXE & MSI files.
- Create intunewin files from winget sources.
- Create weblink to IntuneWin file.
- Automatically created install.ps1 and uninstall.ps1 witch you can test and edit in Powershell_ISE with one click.
- All generated PowerShell scripts used in Intunewin files will log Transcripts logs to specified location. And also show a success or warning in the event viewer PowerShell log.
- Button to create Intunewin file and print detection method in the app. (Which also writes a config.csv file to the package directory.)
- After you select create Intunewin. You will get the option to select a PNG file.
- Then you can use the option for uploading directly to Intune (Uses PowerShell modules MSAL.PS from Jason Thompson and IntuneWin32App from Nickolaj Andersen)

##How to use: 
- For Local Winget options in the GUI. First test Winget.. Open Powershell as Admin and run something like winget list vlc and accept agreement.
  (For packages this isn't an issue.)
- Be sure to setup Powershell execution policy to unrestricted: Set-ExecutionPolicy Unrestricted
- Donwload latest MSI file. (Unattended MSI file) Run as admin.
- Make sure to open file properties and 'Unblock file' for: "C:\Program Files (x86)\IntunePrepTool\IntunePrepTool.exe" and "C:\Program Files (x86)\IntunePrepTool\IntuneWinAppUtil.exe"
- Run IntunePrepTool as Administrator.
- In the first Tab - Config: Select the New / Clear button.
- Then you can select Customer name, Log Folder target, Package folder (Local) and TenantURL.
- Click Save.
- Now select the newly created customer also in the tab - Config.
- For EXE, MSI and Winget it should be clear how to use this.
- After creating the Intunewin package you will get the option to upload a logo. (This is mandatory for the upload to Intune option) Select a PNG file.
- When you want to upload a package to Intune, please use load config.csv from the output package directory. (Location visible when creating package in GUI)
-The GUI shows the parameters for installation and detection method.
- Use Upload button to open Powershell_ISE. Press start there and you will get a prompt to logon to your tenant.

![image](https://user-images.githubusercontent.com/127322820/225110446-ad85e79c-6f0b-4d04-a676-69f83fdc1fdb.png)

![image](https://user-images.githubusercontent.com/127322820/234869763-f9a0a15c-742d-4db2-8af2-fafc64614379.png)


![Screenshot 2023-03-10 170205](https://user-images.githubusercontent.com/127322820/224364767-0a620854-963f-466b-a177-58966a22082c.png)

![Screenshot 2023-03-14 145408](https://user-images.githubusercontent.com/127322820/225023610-6a2b04cb-1562-4452-9255-b8b14d171d6b.png)

![Screenshot 2023-03-10 170310](https://user-images.githubusercontent.com/127322820/224364797-debe4c87-6132-427e-85e5-0109308ddd5e.png)

![Screenshot 2023-03-10 170346](https://user-images.githubusercontent.com/127322820/224364810-aae03744-703d-4e7f-af95-720e6685b7b7.png)

![image](https://user-images.githubusercontent.com/127322820/234869274-61b21fd2-e0bc-497a-9742-e7859ae4f16b.png)

