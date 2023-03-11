#IntunePrepTool

Created by Rink Turksma with Sapien Powershell Studio.

GUI based PowerShell script to create and upload Intunewin packages.
- Used for unattended installation / uninstallation EXE & MSI.
- Also create scripts for Winget packages.
- Automatically created install.ps1 and uninstall.ps1 witch you can test and edit in Powershell_ISE with one click.
- All generated PowerShell scripts used in Intunewin files will log Transcripts logs to specified location. And also show a success or warning in the event viewer PowerShell log.
- Button to create Intunewin file and print detection method in the app. (Which also writes a config.csv file to the package directory.)
- After you select create Intunewin. You will get the option to select a PNG file.
- Then you can use the option for uploading directly to Intune (Uses PowerShell modules MSAL.PS from Jason Thompson and IntuneWin32App from Nickolaj Andersen)

##How to use: 
Download files under Bin\x64:
    +IntunePrepTool.exe
    +config_customerinfo.csv
    +IntuneWinAppUtil.exe (Microsoft)
- Open IntunePrepTool as Administrator.
- In the first Tab - Config: Select the New / Clear button.
- Then you can select Customer name, Log Folder target, Package folder (Local) and TenantURL.
- Click Save.
- Now select the newly created customer also in the tab - Config.
- For EXE, MSI and Winget it should be clear how to use this.
- After creating the Intunewin package you will get the option to upload a logo. (This is mandatory for the upload to Intune option) Select a PNG file.
- When you want to upload a package to Intune, please use load config.csv from the output package directory. (Location visible when creating package in GUI)
-The GUI shows the parameters for installation and detection method.
- Use Upload button to open Powershell_ISE. Press start there and you will get a prompt to logon to your tenant.


![Screenshot 2023-03-10 170113](https://user-images.githubusercontent.com/127322820/224364743-8f69c55d-404f-441b-84cb-d3d4415dc9db.png)


![Screenshot 2023-03-10 170205](https://user-images.githubusercontent.com/127322820/224364767-0a620854-963f-466b-a177-58966a22082c.png)


![Screenshot 2023-03-10 170239](https://user-images.githubusercontent.com/127322820/224364779-1ee20690-3400-435e-8823-88f30af99d00.png)


![Screenshot 2023-03-10 170310](https://user-images.githubusercontent.com/127322820/224364797-debe4c87-6132-427e-85e5-0109308ddd5e.png)

![Screenshot 2023-03-10 170346](https://user-images.githubusercontent.com/127322820/224364810-aae03744-703d-4e7f-af95-720e6685b7b7.png)
