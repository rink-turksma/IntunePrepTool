Update: 20 Januari 2025

The Winget version is not yet up to date.

Created by Rink Turksma with Sapien Powershell Studio.

![GitHub Downloads (all assets, all releases)](https://img.shields.io/github/downloads/rink-turksma/IntunePrepTool/total)
![GitHub Downloads (all assets, latest release)](https://img.shields.io/github/downloads/rink-turksma/IntunePrepTool/latest/total)

For release notes and latest MSI installers see:
https://github.com/rink-turksma/IntunePrepTool/releases

Please use Issues in Github or email for assistence: rinkob@gmail.com

### Simple example on Youtube

<a href="http://www.youtube.com/watch?feature=player_embedded&v=Xn2EBQ_e82U" target="_blank"><img src="http://img.youtube.com/vi/Xn2EBQ_e82U/maxresdefault.jpg" alt="IntunePrepTool Youtube" width="240" height="180" border="10" /></a>


![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/1505d2f6-f5c4-4870-9c35-13edc2275745)

- Easily configure sources such as EXE, MSI, MSIX, Winget, Chocolatey, PowerShell, Scheduled Tasks and weblinks to create installation and uninstallation files. Package them into Intunewin files and upload directly to Intune, with detection methods in place.
- Use Azure OpenAI GPT-4 to look for install parameters when creating packages from EXE files.
- Create winget update remediation policy.
- Download option to download source files from Winget.
- Automatically creates install.ps1 and uninstall.ps1, which you can test and edit in PowerShell ISE with one click.
- All generated PowerShell scripts used in Intunewin files will write transcript logs to a specified location and also show an informational or error message in the Event Viewer under the IntunePrepTool (Application and Services) log.
- The log file is also located at "C:\ProgramData\Microsoft\IntuneManagementExtension\Logs\IntunePrepTool.evtx"; this allows you to use the 'Collect Diagnostics' option from the Intune Admin Portal for Windows clients and download the logs of the packages.
- Button to create Intunewin file, and print detection method in the app. (Which also writes a config.csv file to the package directory.)
- After you select create Intunewin. You will get the option to select a PNG file.
- Then you can use the option for uploading directly to your Intune tenant(s) (Uses IntuneWin32App powershell module from Nickolaj Andersen) 


### How to install: 

Download latest MSI. (https://github.com/rink-turksma/IntunePrepTool/releases)

Unblock MSI file:

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/307b670e-66dd-46d8-b2c6-9fb464a64da1)

Run MSI file.
 	
### How to use

Launch IntunePrepTool:

Run IntunePrepTool as an Administrator.

Screenshots with instructions below.

### Select Customer / Tenant:

1.	Add your customer / tenant here.
2.	Always select a customer before creating a package.
3.	This information is stored in:  "C:\Users\\$ENV:username\\.IntunePrepTool\\config_customerinfo.csv"

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/0200af55-3d8a-4caf-b4fd-fa9c90eb9501)

### Add App registration EntraID for Upload function
![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/c8e1afdd-8184-4900-8df3-89c43a14dd21)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/c955e113-82ac-4878-9517-400e5e6f2074)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/0227f498-aa44-4992-9033-8c24828b2439)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/7c68dd1f-28f4-4855-94fb-5bdadad94564)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/92363e92-956e-4ffb-abab-886a35ed47fe)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/1cda23ac-fea3-4506-8b55-7ce136052168)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/0607a8fd-e796-47c3-8087-72e9848dbd72)

### Download sources from Winget.

1.	This option is used for downloading installers from the Winget repository. (MSI, MSIX or EXE sources)
2.	When using this download option. Files are stored in the specified location in Config panel. (or "C:\Program Files\IntunePrepTool\config_customerinfo.csv" as Downloadpath)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/ae268b9c-25ee-493d-8fb4-288c3bdda69f)

### Create Intunewin package options

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/c1e8c742-755c-4591-9521-f673c683245d)

### Tools options. 

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/b599056b-887b-4d19-835f-b5b634c68842)

### Create Intunewin file from an MSI file.

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/a493d6b3-4b33-4daa-8295-0468e8f36df8)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/d130daf3-22b8-431c-b9ab-5cfe44516d76)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/49f33f18-2443-4ee6-ba5e-ce8069efae13)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/08454bf9-fc10-4288-90fe-f4c61202ba3b)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/276681ee-d408-4ad4-b35c-466d7df20b0d)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/3b4025fb-d28d-409f-8c34-ba2c0f9c0702)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/0bc05477-a181-47f3-8cab-dd48e60cee02)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/55d056fe-d16f-4db2-83db-cd86f99b03ab)

### Upload function to upload Intunewin packages created by IntunePrepTool to Microsoft Intune

1.	After creating Intunewin package with IntunePrepTool a config.csv is written to the output folder of your package. Load the config.csv here to upload your package to MS Intune.
2. 	Please check instructions in the release notes https://github.com/rink-turksma/IntunePrepTool/releases/tag/IntunePrepTool-1.3.0.0 
![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/1f2f99c5-16a5-4132-aae4-fe7ac96ae636)

### How to find Uninstall strings using option in the tools menu.

1.	Search registry for installed application to find the Uninstall string. 

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/c637256d-7dd8-466b-b5a5-747a8847f4a4)


### Create Intunewin file from an EXE source.

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/c233c227-1249-439e-b0fe-7b59b8ab56aa)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/1461fb6d-b66d-432d-9c5f-f7c49991b4c6)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/b3fbc7d6-d5bb-4e54-8a27-aa67dce2eba2)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/26360562-05dc-45c2-b08d-7fbf2423a681)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/7763cbfd-f914-451c-bf76-cfc298d876e4)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/e65218c5-ebfb-46ad-a10b-622a62b3f459)

### How to use Tools menu to find WingetID's, Show more information for this ID, And show possible versions.

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/3b7d7710-80d8-4d36-8711-d681714dc5ca)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/22891d06-4aea-4784-b9ee-3c1e1ed51165)

### How to create a scheduled task Intunewin package

1.	Add Powershell code to run weekly or at startup as a scheduled task. 

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/073a19b6-d401-4d1c-9347-35a2f773945f)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/f7c48aa4-7a88-4d83-a885-94e6c44ae212)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/ec217d62-33b1-427b-b9cc-08623f0e3eb7)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/f735450d-726a-4471-9d1f-3249c845e63a)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/de06e79b-0db2-4de1-ad17-f16034ca27ee)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/ddad4e63-251c-4679-8f7c-3b3a42c05507)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/3a429542-af1a-45f1-9a6c-4c10cb721559)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/c740ddc6-1454-40e2-91ca-4ae995095c88)


### Create Winget Intunewin packages.

1.	Please note. Winget is needed on the target machine for this option. (Windows 10 and 11)
2.	Download the latest stable MSIX from this source: https://github.com/microsoft/winget-cli/releases
3.	Fix installation of the MSIX in a Win32 app when you want to use the 'Required' assignment option in Intune. This so you can use the Dependency option for your Winget apps.
4.	See this first for finding WingetID's. https://github.com/rink-turksma/IntunePrepTool/tree/main#how-to-use-tools-menu-to-find-wingetids-show-more-information-for-this-id-and-show-possible-versions

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/764535ef-e47a-490b-a56c-924c312e8c82)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/aa132489-3c54-4b1d-b235-1e406be321cf)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/e5a10c5d-9e51-4631-9082-e819c86ca1fe)

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/960ad0c4-28a8-4d40-a3d0-99668fc9ae65)


### Location IntunePrepTool logs in Event viewer.

![image](https://github.com/rink-turksma/IntunePrepTool/assets/127322820/6a88d37a-9d8b-4c50-a56d-3829e0ea4d7c)

### Adding Azure OpenAI gpt-4o model to IntunePrepTool

![image](https://github.com/user-attachments/assets/dd5185c0-8ed1-48dc-9b25-f6e01fc121e5)

![image](https://github.com/user-attachments/assets/c6d50664-6988-424d-a108-e539ce796177)

![image](https://github.com/user-attachments/assets/2eeebfba-3ba0-4f2e-944c-28a027e91d97)

![image](https://github.com/user-attachments/assets/60e13d4c-48e5-43b3-8a06-84f93942984c)

![image](https://github.com/user-attachments/assets/9bf3444d-0bb4-499f-bd50-524ff2310070)

![image](https://github.com/user-attachments/assets/70ef255e-c7af-44a8-bd53-3c991fbf090d)

![image](https://github.com/user-attachments/assets/72005c15-496e-4b98-8876-88fd5a4cca83)

![image](https://github.com/user-attachments/assets/cf9b4471-a3c6-438c-86b4-8f98152f7af6)

![image](https://github.com/user-attachments/assets/32dcbbd8-aec4-4c5a-9a59-1b76dae99bfa)

![image](https://github.com/user-attachments/assets/82d0fe9a-f990-4d0b-b0cf-10179a246781)

![image](https://github.com/user-attachments/assets/2d1b3ee3-febb-4286-a11a-8cba96bf5c04)

![image](https://github.com/user-attachments/assets/3b471dee-7386-48ef-b073-2a8868456d89)
