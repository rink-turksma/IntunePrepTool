#----------------------------------------------
# Generated Form Function
#----------------------------------------------
function Show-IntunePrepTool_psf {

	#----------------------------------------------
	#region Import the Assemblies
	#----------------------------------------------
	[void][reflection.assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
	[void][reflection.assembly]::Load('System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
	[void][reflection.assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
	#endregion Import Assemblies

	#----------------------------------------------
	#region Generated Form Objects
	#----------------------------------------------
	[System.Windows.Forms.Application]::EnableVisualStyles()
	$formCustomerName = New-Object 'System.Windows.Forms.Form'
	$tabcontrol1 = New-Object 'System.Windows.Forms.TabControl'
	$tabpage1 = New-Object 'System.Windows.Forms.TabPage'
	$config_panel = New-Object 'System.Windows.Forms.Panel'
	$config_tenanturl_textbox = New-Object 'System.Windows.Forms.TextBox'
	$config_customername_label = New-Object 'System.Windows.Forms.Label'
	$config_TenantURL_label = New-Object 'System.Windows.Forms.Label'
	$config_customername_textbox = New-Object 'System.Windows.Forms.TextBox'
	$config_logfoldertarget_label = New-Object 'System.Windows.Forms.Label'
	$config_packagefolder_textbox = New-Object 'System.Windows.Forms.TextBox'
	$config_logfoldertarger_textbox = New-Object 'System.Windows.Forms.TextBox'
	$config_packagefolder_label = New-Object 'System.Windows.Forms.Label'
	$opslaan_button1 = New-Object 'System.Windows.Forms.Button'
	$tabpage2 = New-Object 'System.Windows.Forms.TabPage'
	$winget_upload_logo_button1 = New-Object 'System.Windows.Forms.Button'
	$checkurl_button1 = New-Object 'System.Windows.Forms.Button'
	$output_textbox3 = New-Object 'System.Windows.Forms.TextBox'
	$WingetID_textbox1 = New-Object 'System.Windows.Forms.TextBox'
	$maakPackage_button1 = New-Object 'System.Windows.Forms.Button'
	$wingetid_label1 = New-Object 'System.Windows.Forms.Label'
	$versie_label2 = New-Object 'System.Windows.Forms.Label'
	$versie_textbox2 = New-Object 'System.Windows.Forms.TextBox'
	$tabpage3 = New-Object 'System.Windows.Forms.TabPage'
	$OpenSourceDir_button1 = New-Object 'System.Windows.Forms.Button'
	$msi_panel1 = New-Object 'System.Windows.Forms.Panel'
	$msi_buttonUploadLogoPNG = New-Object 'System.Windows.Forms.Button'
	$button4TestUninstallPowers = New-Object 'System.Windows.Forms.Button'
	$msi_test_install_button1 = New-Object 'System.Windows.Forms.Button'
	$button1MaakInstallScript = New-Object 'System.Windows.Forms.Button'
	$button5MaakIntunewinFile = New-Object 'System.Windows.Forms.Button'
	$button3MaakUninstallScript = New-Object 'System.Windows.Forms.Button'
	$msi_uninstall_par_textbox1 = New-Object 'System.Windows.Forms.TextBox'
	$labelVoorbeeldUninstall = New-Object 'System.Windows.Forms.Label'
	$labelUninstallParametersC = New-Object 'System.Windows.Forms.Label'
	$msi_install_par_textbox3 = New-Object 'System.Windows.Forms.TextBox'
	$labelInstallParameterspas = New-Object 'System.Windows.Forms.Label'
	$msi_output_textbox1 = New-Object 'System.Windows.Forms.TextBox'
	$buttonMaakPackageDirectory = New-Object 'System.Windows.Forms.Button'
	$labelVersie = New-Object 'System.Windows.Forms.Label'
	$labelPackageNaam = New-Object 'System.Windows.Forms.Label'
	$msi_versie_textbox1 = New-Object 'System.Windows.Forms.TextBox'
	$msi_packagenaam_textbox1 = New-Object 'System.Windows.Forms.TextBox'
	$msi_label1 = New-Object 'System.Windows.Forms.Label'
	$label2 = New-Object 'System.Windows.Forms.Label'
	$buttonOpenMSIFile = New-Object 'System.Windows.Forms.Button'
	$tabpage4 = New-Object 'System.Windows.Forms.TabPage'
	$label1 = New-Object 'System.Windows.Forms.Label'
	$tabpage5 = New-Object 'System.Windows.Forms.TabPage'
	$exe_panel1 = New-Object 'System.Windows.Forms.Panel'
	$exe_uploadlogo_button1 = New-Object 'System.Windows.Forms.Button'
	$exe_maak_intuneWIN_button1 = New-Object 'System.Windows.Forms.Button'
	$exe_maakScripting_button1 = New-Object 'System.Windows.Forms.Button'
	$exe_test_uninstall_button1 = New-Object 'System.Windows.Forms.Button'
	$exeparsUnInstall_textbox1 = New-Object 'System.Windows.Forms.TextBox'
	$exe_labelVoorbeeldUninstall = New-Object 'System.Windows.Forms.Label'
	$uninstall_exe_path_textbox2 = New-Object 'System.Windows.Forms.TextBox'
	$radiobuttonGebruikZelfdeEXEAlsB = New-Object 'System.Windows.Forms.RadioButton'
	$radiobuttonUninstallEXEPath = New-Object 'System.Windows.Forms.RadioButton'
	$exeUnlInstallParameters = New-Object 'System.Windows.Forms.Label'
	$exe_install_test_button1 = New-Object 'System.Windows.Forms.Button'
	$exe_output_installparameters = New-Object 'System.Windows.Forms.Label'
	$exe_parsInstall_textbox1 = New-Object 'System.Windows.Forms.TextBox'
	$exe_install_par_label1 = New-Object 'System.Windows.Forms.Label'
	$exe_output_textbox1 = New-Object 'System.Windows.Forms.TextBox'
	$exe_maakPackageDir_button1 = New-Object 'System.Windows.Forms.Button'
	$exe_pversie_label1 = New-Object 'System.Windows.Forms.Label'
	$exe_packagenaam_label1 = New-Object 'System.Windows.Forms.Label'
	$exe_versie_textbox1 = New-Object 'System.Windows.Forms.TextBox'
	$exe_packagenaam_textbox1 = New-Object 'System.Windows.Forms.TextBox'
	$exe_label1 = New-Object 'System.Windows.Forms.Label'
	$openexe_label1 = New-Object 'System.Windows.Forms.Label'
	$openexe_button1 = New-Object 'System.Windows.Forms.Button'
	$tabpage6 = New-Object 'System.Windows.Forms.TabPage'
	$labelNogInvullingAanTeGev = New-Object 'System.Windows.Forms.Label'
	$tools_tabpage7 = New-Object 'System.Windows.Forms.TabPage'
	$zoek_uninstallstring_Syswow_button1 = New-Object 'System.Windows.Forms.Button'
	$Tools_zoekUninstall_String_button1 = New-Object 'System.Windows.Forms.Button'
	$toolsOutput_textbox1 = New-Object 'System.Windows.Forms.TextBox'
	$Upload_tabpage7 = New-Object 'System.Windows.Forms.TabPage'
	$deP_label3 = New-Object 'System.Windows.Forms.Label'
	$dep_textbox1 = New-Object 'System.Windows.Forms.TextBox'
	$tenanturl_label3 = New-Object 'System.Windows.Forms.Label'
	$tenantURL_textbox1 = New-Object 'System.Windows.Forms.TextBox'
	$upload_button1 = New-Object 'System.Windows.Forms.Button'
	$upload_panel1 = New-Object 'System.Windows.Forms.Panel'
	$uninstallCMD_textbox1 = New-Object 'System.Windows.Forms.TextBox'
	$installCMD_textbox1 = New-Object 'System.Windows.Forms.TextBox'
	$regValue_textbox1 = New-Object 'System.Windows.Forms.TextBox'
	$reglocation_textbox1 = New-Object 'System.Windows.Forms.TextBox'
	$AppVersion_textbox1 = New-Object 'System.Windows.Forms.TextBox'
	$Publisher_textbox1 = New-Object 'System.Windows.Forms.TextBox'
	$DisplayName_textbox1 = New-Object 'System.Windows.Forms.TextBox'
	$IntuneWinFile_textbox1 = New-Object 'System.Windows.Forms.TextBox'
	$uninstallCMD_label1 = New-Object 'System.Windows.Forms.Label'
	$installCMD_label1 = New-Object 'System.Windows.Forms.Label'
	$regValue_label1 = New-Object 'System.Windows.Forms.Label'
	$reglocation_label1 = New-Object 'System.Windows.Forms.Label'
	$AppVersion_label1 = New-Object 'System.Windows.Forms.Label'
	$Publisher_label1 = New-Object 'System.Windows.Forms.Label'
	$DisplayName_label1 = New-Object 'System.Windows.Forms.Label'
	$IntuneWinFile_label3 = New-Object 'System.Windows.Forms.Label'
	$LoadConfig_button1 = New-Object 'System.Windows.Forms.Button'
	$menustripTheme = New-Object 'System.Windows.Forms.MenuStrip'
	$themeToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$darkToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$lightToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$exe_openfiledialog1 = New-Object 'System.Windows.Forms.OpenFileDialog'
	$MSI_openfiledialog1 = New-Object 'System.Windows.Forms.OpenFileDialog'
	$config_csv_openfiledialog1 = New-Object 'System.Windows.Forms.OpenFileDialog'
	$UploadLogo_openfiledialog1 = New-Object 'System.Windows.Forms.OpenFileDialog'
	$InitialFormWindowState = New-Object 'System.Windows.Forms.FormWindowState'
	#endregion Generated Form Objects

	#----------------------------------------------
	#region Generated Form Code
	#----------------------------------------------
	$formCustomerName.SuspendLayout()
	$tabcontrol1.SuspendLayout()
	$tabpage1.SuspendLayout()
	$tabpage2.SuspendLayout()
	$tabpage3.SuspendLayout()
	$msi_panel1.SuspendLayout()
	$tabpage4.SuspendLayout()
	$tabpage5.SuspendLayout()
	$exe_panel1.SuspendLayout()
	$tabpage6.SuspendLayout()
	$tools_tabpage7.SuspendLayout()
	$Upload_tabpage7.SuspendLayout()
	$upload_panel1.SuspendLayout()
	$menustripTheme.SuspendLayout()
	$config_panel.SuspendLayout()
	#
	# formCustomerName
	#
	$formCustomerName.Controls.Add($tabcontrol1)
	$formCustomerName.Controls.Add($menustripTheme)
	$formCustomerName.AutoScaleDimensions = New-Object System.Drawing.SizeF(11, 24)
	$formCustomerName.AutoScaleMode = 'Font'
	$formCustomerName.ClientSize = New-Object System.Drawing.Size(2092, 1050)
	$formCustomerName.Margin = '11, 11, 11, 11'
	$formCustomerName.Name = 'formCustomerName'
	$formCustomerName.StartPosition = 'CenterScreen'
	$formCustomerName.Text = 'Customer Name'
	$formCustomerName.add_Load($formCustomerName_Load)
	#
	# tabcontrol1
	#
	$tabcontrol1.Controls.Add($tabpage1)
	$tabcontrol1.Controls.Add($tabpage2)
	$tabcontrol1.Controls.Add($tabpage3)
	$tabcontrol1.Controls.Add($tabpage4)
	$tabcontrol1.Controls.Add($tabpage5)
	$tabcontrol1.Controls.Add($tabpage6)
	$tabcontrol1.Controls.Add($tools_tabpage7)
	$tabcontrol1.Controls.Add($Upload_tabpage7)
	$tabcontrol1.Location = New-Object System.Drawing.Point(0, 0)
	$tabcontrol1.Margin = '6, 6, 6, 6'
	$tabcontrol1.Name = 'tabcontrol1'
	$tabcontrol1.SelectedIndex = 0
	$tabcontrol1.Size = New-Object System.Drawing.Size(1977, 1008)
	$tabcontrol1.TabIndex = 23
	$tabcontrol1.add_SelectedIndexChanged($tabcontrol1_SelectedIndexChanged)
	#
	# tabpage1
	#
	$tabpage1.Controls.Add($config_panel)
	$tabpage1.Controls.Add($opslaan_button1)
	$tabpage1.Location = New-Object System.Drawing.Point(4, 33)
	$tabpage1.Margin = '6, 6, 6, 6'
	$tabpage1.Name = 'tabpage1'
	$tabpage1.Padding = '6, 6, 6, 6'
	$tabpage1.Size = New-Object System.Drawing.Size(1969, 971)
	$tabpage1.TabIndex = 0
	$tabpage1.Text = 'Config'
	$tabpage1.UseVisualStyleBackColor = $True
	$tabpage1.add_Click($tabpage1_Click)
	#
	# config_panel
	#
	$config_panel.Controls.Add($config_tenanturl_textbox)
	$config_panel.Controls.Add($config_customername_label)
	$config_panel.Controls.Add($config_TenantURL_label)
	$config_panel.Controls.Add($config_customername_textbox)
	$config_panel.Controls.Add($config_logfoldertarget_label)
	$config_panel.Controls.Add($config_packagefolder_textbox)
	$config_panel.Controls.Add($config_logfoldertarger_textbox)
	$config_panel.Controls.Add($config_packagefolder_label)
	$config_panel.Location = New-Object System.Drawing.Point(200, 132)
	$config_panel.Margin = '6, 6, 6, 6'
	$config_panel.Name = 'config_panel'
	$config_panel.Size = New-Object System.Drawing.Size(981, 372)
	$config_panel.TabIndex = 27
	$config_panel.add_Paint($config_panel_Paint)
	#
	# config_tenanturl_textbox
	#
	$config_tenanturl_textbox.Location = New-Object System.Drawing.Point(268, 275)
	$config_tenanturl_textbox.Margin = '6, 6, 6, 6'
	$config_tenanturl_textbox.Name = 'config_tenanturl_textbox'
	$config_tenanturl_textbox.Size = New-Object System.Drawing.Size(569, 29)
	$config_tenanturl_textbox.TabIndex = 27
	#
	# config_customername_label
	#
	$config_customername_label.AutoSize = $True
	$config_customername_label.Location = New-Object System.Drawing.Point(61, 97)
	$config_customername_label.Margin = '7, 0, 7, 0'
	$config_customername_label.Name = 'config_customername_label'
	$config_customername_label.Size = New-Object System.Drawing.Size(151, 25)
	$config_customername_label.TabIndex = 21
	$config_customername_label.Text = 'Customer name'
	$config_customername_label.TextAlign = 'BottomLeft'
	#
	# config_TenantURL_label
	#
	$config_TenantURL_label.AutoSize = $True
	$config_TenantURL_label.Location = New-Object System.Drawing.Point(61, 279)
	$config_TenantURL_label.Margin = '11, 0, 11, 0'
	$config_TenantURL_label.Name = 'config_TenantURL_label'
	$config_TenantURL_label.Size = New-Object System.Drawing.Size(112, 25)
	$config_TenantURL_label.TabIndex = 26
	$config_TenantURL_label.Text = 'TenantURL'
	#
	# config_customername_textbox
	#
	$config_customername_textbox.Location = New-Object System.Drawing.Point(268, 93)
	$config_customername_textbox.Margin = '7, 7, 7, 7'
	$config_customername_textbox.Name = 'config_customername_textbox'
	$config_customername_textbox.Size = New-Object System.Drawing.Size(569, 29)
	$config_customername_textbox.TabIndex = 22
	$config_customername_textbox.add_TextChanged($config_customername_textbox_TextChanged)
	#
	# config_logfoldertarget_label
	#
	$config_logfoldertarget_label.AutoSize = $True
	$config_logfoldertarget_label.Location = New-Object System.Drawing.Point(60, 152)
	$config_logfoldertarget_label.Margin = '7, 0, 7, 0'
	$config_logfoldertarget_label.Name = 'config_logfoldertarget_label'
	$config_logfoldertarget_label.Size = New-Object System.Drawing.Size(152, 25)
	$config_logfoldertarget_label.TabIndex = 23
	$config_logfoldertarget_label.Text = 'Log folder target'
	#
	# config_packagefolder_textbox
	#
	$config_packagefolder_textbox.Location = New-Object System.Drawing.Point(268, 216)
	$config_packagefolder_textbox.Margin = '7, 7, 7, 7'
	$config_packagefolder_textbox.Name = 'config_packagefolder_textbox'
	$config_packagefolder_textbox.Size = New-Object System.Drawing.Size(569, 29)
	$config_packagefolder_textbox.TabIndex = 19
	$config_packagefolder_textbox.add_TextChanged($config_packagefolder_textbox_TextChanged)
	#
	# config_logfoldertarger_textbox
	#
	$config_logfoldertarger_textbox.Location = New-Object System.Drawing.Point(268, 152)
	$config_logfoldertarger_textbox.Margin = '7, 7, 7, 7'
	$config_logfoldertarger_textbox.Name = 'config_logfoldertarger_textbox'
	$config_logfoldertarger_textbox.Size = New-Object System.Drawing.Size(569, 29)
	$config_logfoldertarger_textbox.TabIndex = 24
	$config_logfoldertarger_textbox.add_TextChanged($config_logfoldertarger_textbox_TextChanged)
	#
	# config_packagefolder_label
	#
	$config_packagefolder_label.AutoSize = $True
	$config_packagefolder_label.Location = New-Object System.Drawing.Point(61, 216)
	$config_packagefolder_label.Margin = '7, 0, 7, 0'
	$config_packagefolder_label.Name = 'config_packagefolder_label'
	$config_packagefolder_label.Size = New-Object System.Drawing.Size(142, 25)
	$config_packagefolder_label.TabIndex = 20
	$config_packagefolder_label.Text = 'Package folder'
	$config_packagefolder_label.add_Click($config_packagefolder_label_Click)
	#
	# opslaan_button1
	#
	$opslaan_button1.Location = New-Object System.Drawing.Point(660, 663)
	$opslaan_button1.Margin = '6, 6, 6, 6'
	$opslaan_button1.Name = 'opslaan_button1'
	$opslaan_button1.Size = New-Object System.Drawing.Size(138, 42)
	$opslaan_button1.TabIndex = 25
	$opslaan_button1.Text = 'Opslaan'
	$opslaan_button1.UseVisualStyleBackColor = $True
	$opslaan_button1.add_Click($opslaan_button1_Click)
	#
	# tabpage2
	#
	$tabpage2.Controls.Add($winget_upload_logo_button1)
	$tabpage2.Controls.Add($checkurl_button1)
	$tabpage2.Controls.Add($output_textbox3)
	$tabpage2.Controls.Add($WingetID_textbox1)
	$tabpage2.Controls.Add($maakPackage_button1)
	$tabpage2.Controls.Add($wingetid_label1)
	$tabpage2.Controls.Add($versie_label2)
	$tabpage2.Controls.Add($versie_textbox2)
	$tabpage2.Location = New-Object System.Drawing.Point(4, 33)
	$tabpage2.Margin = '6, 6, 6, 6'
	$tabpage2.Name = 'tabpage2'
	$tabpage2.Padding = '6, 6, 6, 6'
	$tabpage2.Size = New-Object System.Drawing.Size(1969, 971)
	$tabpage2.TabIndex = 1
	$tabpage2.Text = 'Winget'
	$tabpage2.UseVisualStyleBackColor = $True
	$tabpage2.add_Click($tabpage2_Click)
	#
	# winget_upload_logo_button1
	#
	$winget_upload_logo_button1.Enabled = $False
	$winget_upload_logo_button1.Location = New-Object System.Drawing.Point(302, 148)
	$winget_upload_logo_button1.Margin = '6, 6, 6, 6'
	$winget_upload_logo_button1.Name = 'winget_upload_logo_button1'
	$winget_upload_logo_button1.Size = New-Object System.Drawing.Size(209, 42)
	$winget_upload_logo_button1.TabIndex = 24
	$winget_upload_logo_button1.Text = 'Upload Logo (PNG)'
	$winget_upload_logo_button1.UseVisualStyleBackColor = $True
	$winget_upload_logo_button1.Visible = $False
	$winget_upload_logo_button1.add_Click($winget_upload_logo_button1_Click)
	#
	# checkurl_button1
	#
	$checkurl_button1.Location = New-Object System.Drawing.Point(820, 24)
	$checkurl_button1.Margin = '6, 6, 6, 6'
	$checkurl_button1.Name = 'checkurl_button1'
	$checkurl_button1.Size = New-Object System.Drawing.Size(169, 44)
	$checkurl_button1.TabIndex = 23
	$checkurl_button1.Text = 'Check URL'
	$checkurl_button1.UseVisualStyleBackColor = $True
	$checkurl_button1.add_Click($checkurl_button1_Click)
	#
	# output_textbox3
	#
	$output_textbox3.Location = New-Object System.Drawing.Point(24, 218)
	$output_textbox3.Margin = '7, 7, 7, 7'
	$output_textbox3.Multiline = $True
	$output_textbox3.Name = 'output_textbox3'
	$output_textbox3.Size = New-Object System.Drawing.Size(1249, 665)
	$output_textbox3.TabIndex = 22
	$output_textbox3.Text = 'Winget naar Intunewin '
	$output_textbox3.add_TextChanged($output_textbox3_TextChanged)
	#
	# WingetID_textbox1
	#
	$WingetID_textbox1.Location = New-Object System.Drawing.Point(211, 24)
	$WingetID_textbox1.Margin = '7, 7, 7, 7'
	$WingetID_textbox1.Name = 'WingetID_textbox1'
	$WingetID_textbox1.Size = New-Object System.Drawing.Size(569, 29)
	$WingetID_textbox1.TabIndex = 15
	$WingetID_textbox1.add_TextChanged($WingetID_textbox1_TextChanged)
	#
	# maakPackage_button1
	#
	$maakPackage_button1.Location = New-Object System.Drawing.Point(24, 148)
	$maakPackage_button1.Margin = '6, 6, 6, 6'
	$maakPackage_button1.Name = 'maakPackage_button1'
	$maakPackage_button1.Size = New-Object System.Drawing.Size(268, 42)
	$maakPackage_button1.TabIndex = 21
	$maakPackage_button1.Text = 'Maak intunewin file'
	$maakPackage_button1.UseVisualStyleBackColor = $True
	$maakPackage_button1.add_Click($maakPackage_button1_Click)
	#
	# wingetid_label1
	#
	$wingetid_label1.AutoSize = $True
	$wingetid_label1.Location = New-Object System.Drawing.Point(24, 24)
	$wingetid_label1.Margin = '7, 0, 7, 0'
	$wingetid_label1.Name = 'wingetid_label1'
	$wingetid_label1.Size = New-Object System.Drawing.Size(93, 25)
	$wingetid_label1.TabIndex = 16
	$wingetid_label1.Text = 'WingetID'
	#
	# versie_label2
	#
	$versie_label2.AutoSize = $True
	$versie_label2.Location = New-Object System.Drawing.Point(24, 85)
	$versie_label2.Margin = '7, 0, 7, 0'
	$versie_label2.Name = 'versie_label2'
	$versie_label2.Size = New-Object System.Drawing.Size(68, 25)
	$versie_label2.TabIndex = 17
	$versie_label2.Text = 'Versie'
	#
	# versie_textbox2
	#
	$versie_textbox2.Location = New-Object System.Drawing.Point(211, 79)
	$versie_textbox2.Margin = '7, 7, 7, 7'
	$versie_textbox2.Name = 'versie_textbox2'
	$versie_textbox2.Size = New-Object System.Drawing.Size(569, 29)
	$versie_textbox2.TabIndex = 18
	$versie_textbox2.add_TextChanged($versie_textbox2_TextChanged)
	#
	# tabpage3
	#
	$tabpage3.Controls.Add($OpenSourceDir_button1)
	$tabpage3.Controls.Add($msi_panel1)
	$tabpage3.Controls.Add($msi_output_textbox1)
	$tabpage3.Controls.Add($buttonMaakPackageDirectory)
	$tabpage3.Controls.Add($labelVersie)
	$tabpage3.Controls.Add($labelPackageNaam)
	$tabpage3.Controls.Add($msi_versie_textbox1)
	$tabpage3.Controls.Add($msi_packagenaam_textbox1)
	$tabpage3.Controls.Add($msi_label1)
	$tabpage3.Controls.Add($label2)
	$tabpage3.Controls.Add($buttonOpenMSIFile)
	$tabpage3.Location = New-Object System.Drawing.Point(4, 33)
	$tabpage3.Margin = '6, 6, 6, 6'
	$tabpage3.Name = 'tabpage3'
	$tabpage3.Padding = '6, 6, 6, 6'
	$tabpage3.Size = New-Object System.Drawing.Size(1969, 971)
	$tabpage3.TabIndex = 2
	$tabpage3.Text = 'MSI'
	$tabpage3.UseVisualStyleBackColor = $True
	#
	# OpenSourceDir_button1
	#
	$OpenSourceDir_button1.Enabled = $False
	$OpenSourceDir_button1.Location = New-Object System.Drawing.Point(554, 201)
	$OpenSourceDir_button1.Margin = '6, 6, 6, 6'
	$OpenSourceDir_button1.Name = 'OpenSourceDir_button1'
	$OpenSourceDir_button1.Size = New-Object System.Drawing.Size(249, 42)
	$OpenSourceDir_button1.TabIndex = 20
	$OpenSourceDir_button1.Text = 'Open Source Directory'
	$OpenSourceDir_button1.UseVisualStyleBackColor = $True
	$OpenSourceDir_button1.Visible = $False
	$OpenSourceDir_button1.add_Click($OpenSourceDir_button1_Click)
	#
	# msi_panel1
	#
	$msi_panel1.Controls.Add($msi_buttonUploadLogoPNG)
	$msi_panel1.Controls.Add($button4TestUninstallPowers)
	$msi_panel1.Controls.Add($msi_test_install_button1)
	$msi_panel1.Controls.Add($button1MaakInstallScript)
	$msi_panel1.Controls.Add($button5MaakIntunewinFile)
	$msi_panel1.Controls.Add($button3MaakUninstallScript)
	$msi_panel1.Controls.Add($msi_uninstall_par_textbox1)
	$msi_panel1.Controls.Add($labelVoorbeeldUninstall)
	$msi_panel1.Controls.Add($labelUninstallParametersC)
	$msi_panel1.Controls.Add($msi_install_par_textbox3)
	$msi_panel1.Controls.Add($labelInstallParameterspas)
	$msi_panel1.Enabled = $False
	$msi_panel1.Location = New-Object System.Drawing.Point(51, 292)
	$msi_panel1.Margin = '6, 6, 6, 6'
	$msi_panel1.Name = 'msi_panel1'
	$msi_panel1.Size = New-Object System.Drawing.Size(959, 638)
	$msi_panel1.TabIndex = 19
	$msi_panel1.Visible = $False
	$msi_panel1.add_Paint($msi_panel1_Paint)
	#
	# msi_buttonUploadLogoPNG
	#
	$msi_buttonUploadLogoPNG.Enabled = $False
	$msi_buttonUploadLogoPNG.Location = New-Object System.Drawing.Point(680, 535)
	$msi_buttonUploadLogoPNG.Margin = '6, 6, 6, 6'
	$msi_buttonUploadLogoPNG.Name = 'msi_buttonUploadLogoPNG'
	$msi_buttonUploadLogoPNG.Size = New-Object System.Drawing.Size(229, 42)
	$msi_buttonUploadLogoPNG.TabIndex = 30
	$msi_buttonUploadLogoPNG.Text = 'Upload Logo (PNG)'
	$msi_buttonUploadLogoPNG.UseVisualStyleBackColor = $True
	$msi_buttonUploadLogoPNG.Visible = $False
	$msi_buttonUploadLogoPNG.add_Click($msi_buttonUploadLogoPNG_Click)
	#
	# button4TestUninstallPowers
	#
	$button4TestUninstallPowers.Location = New-Object System.Drawing.Point(316, 481)
	$button4TestUninstallPowers.Margin = '6, 6, 6, 6'
	$button4TestUninstallPowers.Name = 'button4TestUninstallPowers'
	$button4TestUninstallPowers.Size = New-Object System.Drawing.Size(352, 42)
	$button4TestUninstallPowers.TabIndex = 29
	$button4TestUninstallPowers.Text = '4. Test Uninstall (Powershell_ISE)'
	$button4TestUninstallPowers.UseVisualStyleBackColor = $True
	$button4TestUninstallPowers.add_Click($button4TestUninstallPowers_Click)
	#
	# msi_test_install_button1
	#
	$msi_test_install_button1.Location = New-Object System.Drawing.Point(245, 239)
	$msi_test_install_button1.Margin = '6, 6, 6, 6'
	$msi_test_install_button1.Name = 'msi_test_install_button1'
	$msi_test_install_button1.Size = New-Object System.Drawing.Size(324, 42)
	$msi_test_install_button1.TabIndex = 28
	$msi_test_install_button1.Text = '2. Test install (Powershell_ISE)'
	$msi_test_install_button1.UseVisualStyleBackColor = $True
	$msi_test_install_button1.add_Click($msi_test_install_button1_Click)
	#
	# button1MaakInstallScript
	#
	$button1MaakInstallScript.Location = New-Object System.Drawing.Point(15, 239)
	$button1MaakInstallScript.Margin = '6, 6, 6, 6'
	$button1MaakInstallScript.Name = 'button1MaakInstallScript'
	$button1MaakInstallScript.Size = New-Object System.Drawing.Size(218, 42)
	$button1MaakInstallScript.TabIndex = 27
	$button1MaakInstallScript.Text = '1. Maak install Script'
	$button1MaakInstallScript.UseVisualStyleBackColor = $True
	$button1MaakInstallScript.add_Click($button1MaakInstallScript_Click)
	#
	# button5MaakIntunewinFile
	#
	$button5MaakIntunewinFile.Location = New-Object System.Drawing.Point(680, 481)
	$button5MaakIntunewinFile.Margin = '6, 6, 6, 6'
	$button5MaakIntunewinFile.Name = 'button5MaakIntunewinFile'
	$button5MaakIntunewinFile.Size = New-Object System.Drawing.Size(229, 42)
	$button5MaakIntunewinFile.TabIndex = 26
	$button5MaakIntunewinFile.Text = '5. Maak Intunewin file'
	$button5MaakIntunewinFile.UseVisualStyleBackColor = $True
	$button5MaakIntunewinFile.add_Click($button5MaakIntunewinFile_Click)
	#
	# button3MaakUninstallScript
	#
	$button3MaakUninstallScript.Location = New-Object System.Drawing.Point(18, 481)
	$button3MaakUninstallScript.Margin = '6, 6, 6, 6'
	$button3MaakUninstallScript.Name = 'button3MaakUninstallScript'
	$button3MaakUninstallScript.Size = New-Object System.Drawing.Size(288, 42)
	$button3MaakUninstallScript.TabIndex = 25
	$button3MaakUninstallScript.Text = '3. Maak Uninstall Script'
	$button3MaakUninstallScript.UseVisualStyleBackColor = $True
	$button3MaakUninstallScript.add_Click($button3MaakUninstallScript_Click)
	#
	# msi_uninstall_par_textbox1
	#
	$msi_uninstall_par_textbox1.Location = New-Object System.Drawing.Point(18, 330)
	$msi_uninstall_par_textbox1.Margin = '7, 7, 7, 7'
	$msi_uninstall_par_textbox1.Multiline = $True
	$msi_uninstall_par_textbox1.Name = 'msi_uninstall_par_textbox1'
	$msi_uninstall_par_textbox1.Size = New-Object System.Drawing.Size(851, 150)
	$msi_uninstall_par_textbox1.TabIndex = 23
	$msi_uninstall_par_textbox1.add_TextChanged($msi_uninstall_par_textbox1_TextChanged)
	#
	# labelVoorbeeldUninstall
	#
	$labelVoorbeeldUninstall.AutoSize = $True
	$labelVoorbeeldUninstall.Location = New-Object System.Drawing.Point(18, 405)
	$labelVoorbeeldUninstall.Margin = '11, 0, 11, 0'
	$labelVoorbeeldUninstall.Name = 'labelVoorbeeldUninstall'
	$labelVoorbeeldUninstall.Size = New-Object System.Drawing.Size(185, 25)
	$labelVoorbeeldUninstall.TabIndex = 22
	$labelVoorbeeldUninstall.Text = 'Voorbeeld un-install'
	#
	# labelUninstallParametersC
	#
	$labelUninstallParametersC.AutoSize = $True
	$labelUninstallParametersC.Location = New-Object System.Drawing.Point(15, 287)
	$labelUninstallParametersC.Margin = '11, 0, 11, 0'
	$labelUninstallParametersC.Name = 'labelUninstallParametersC'
	$labelUninstallParametersC.Size = New-Object System.Drawing.Size(698, 25)
	$labelUninstallParametersC.TabIndex = 18
	$labelUninstallParametersC.Text = 'Uninstall Parameters (Copy uit Powershell_ISE of zoek Product ID onder Tools)'
	#
	# msi_install_par_textbox3
	#
	$msi_install_par_textbox3.Location = New-Object System.Drawing.Point(9, 35)
	$msi_install_par_textbox3.Margin = '7, 7, 7, 7'
	$msi_install_par_textbox3.Multiline = $True
	$msi_install_par_textbox3.Name = 'msi_install_par_textbox3'
	$msi_install_par_textbox3.Size = New-Object System.Drawing.Size(943, 194)
	$msi_install_par_textbox3.TabIndex = 6
	$msi_install_par_textbox3.add_TextChanged($msi_install_par_textbox3_TextChanged)
	#
	# labelInstallParameterspas
	#
	$labelInstallParameterspas.AutoSize = $True
	$labelInstallParameterspas.Location = New-Object System.Drawing.Point(9, 7)
	$labelInstallParameterspas.Margin = '11, 0, 11, 0'
	$labelInstallParameterspas.Name = 'labelInstallParameterspas'
	$labelInstallParameterspas.Size = New-Object System.Drawing.Size(366, 25)
	$labelInstallParameterspas.TabIndex = 0
	$labelInstallParameterspas.Text = 'Install Parameters (pas aan indien nodig)'
	$labelInstallParameterspas.add_Click($labelInstallParameterspas_Click)
	#
	# msi_output_textbox1
	#
	$msi_output_textbox1.Location = New-Object System.Drawing.Point(1056, 46)
	$msi_output_textbox1.Margin = '11, 11, 11, 11'
	$msi_output_textbox1.Multiline = $True
	$msi_output_textbox1.Name = 'msi_output_textbox1'
	$msi_output_textbox1.Size = New-Object System.Drawing.Size(838, 1265)
	$msi_output_textbox1.TabIndex = 18
	#
	# buttonMaakPackageDirectory
	#
	$buttonMaakPackageDirectory.Location = New-Object System.Drawing.Point(222, 203)
	$buttonMaakPackageDirectory.Margin = '6, 6, 6, 6'
	$buttonMaakPackageDirectory.Name = 'buttonMaakPackageDirectory'
	$buttonMaakPackageDirectory.Size = New-Object System.Drawing.Size(293, 42)
	$buttonMaakPackageDirectory.TabIndex = 17
	$buttonMaakPackageDirectory.Text = 'Maak Package Directory'
	$buttonMaakPackageDirectory.UseVisualStyleBackColor = $True
	$buttonMaakPackageDirectory.add_Click($buttonMaakPackageDirectory_Click)
	#
	# labelVersie
	#
	$labelVersie.AutoSize = $True
	$labelVersie.Location = New-Object System.Drawing.Point(51, 155)
	$labelVersie.Margin = '11, 0, 11, 0'
	$labelVersie.Name = 'labelVersie'
	$labelVersie.Size = New-Object System.Drawing.Size(68, 25)
	$labelVersie.TabIndex = 16
	$labelVersie.Text = 'Versie'
	#
	# labelPackageNaam
	#
	$labelPackageNaam.AutoSize = $True
	$labelPackageNaam.Location = New-Object System.Drawing.Point(51, 107)
	$labelPackageNaam.Margin = '11, 0, 11, 0'
	$labelPackageNaam.Name = 'labelPackageNaam'
	$labelPackageNaam.Size = New-Object System.Drawing.Size(146, 25)
	$labelPackageNaam.TabIndex = 15
	$labelPackageNaam.Text = 'Package Naam'
	#
	# msi_versie_textbox1
	#
	$msi_versie_textbox1.Location = New-Object System.Drawing.Point(222, 155)
	$msi_versie_textbox1.Margin = '11, 11, 11, 11'
	$msi_versie_textbox1.Name = 'msi_versie_textbox1'
	$msi_versie_textbox1.Size = New-Object System.Drawing.Size(290, 29)
	$msi_versie_textbox1.TabIndex = 14
	#
	# msi_packagenaam_textbox1
	#
	$msi_packagenaam_textbox1.Location = New-Object System.Drawing.Point(222, 107)
	$msi_packagenaam_textbox1.Margin = '11, 11, 11, 11'
	$msi_packagenaam_textbox1.Name = 'msi_packagenaam_textbox1'
	$msi_packagenaam_textbox1.Size = New-Object System.Drawing.Size(290, 29)
	$msi_packagenaam_textbox1.TabIndex = 13
	$msi_packagenaam_textbox1.add_TextChanged($msi_packagenaam_textbox1_TextChanged)
	#
	# msi_label1
	#
	$msi_label1.AutoSize = $True
	$msi_label1.Location = New-Object System.Drawing.Point(198, 52)
	$msi_label1.Margin = '11, 0, 11, 0'
	$msi_label1.Name = 'msi_label1'
	$msi_label1.Size = New-Object System.Drawing.Size(64, 25)
	$msi_label1.TabIndex = 12
	$msi_label1.Text = 'label1'
	$msi_label1.Visible = $False
	$msi_label1.add_Click($msi_label1_Click)
	#
	# label2
	#
	$label2.AutoSize = $True
	$label2.Location = New-Object System.Drawing.Point(198, 52)
	$label2.Margin = '11, 0, 11, 0'
	$label2.Name = 'label2'
	$label2.Size = New-Object System.Drawing.Size(0, 25)
	$label2.TabIndex = 11
	#
	# buttonOpenMSIFile
	#
	$buttonOpenMSIFile.Location = New-Object System.Drawing.Point(31, 42)
	$buttonOpenMSIFile.Margin = '6, 6, 6, 6'
	$buttonOpenMSIFile.Name = 'buttonOpenMSIFile'
	$buttonOpenMSIFile.Size = New-Object System.Drawing.Size(138, 42)
	$buttonOpenMSIFile.TabIndex = 10
	$buttonOpenMSIFile.Text = 'Open MSI File'
	$buttonOpenMSIFile.UseVisualStyleBackColor = $True
	$buttonOpenMSIFile.add_Click($buttonOpenMSIFile_Click)
	#
	# tabpage4
	#
	$tabpage4.Controls.Add($label1)
	$tabpage4.Location = New-Object System.Drawing.Point(4, 33)
	$tabpage4.Margin = '6, 6, 6, 6'
	$tabpage4.Name = 'tabpage4'
	$tabpage4.Padding = '6, 6, 6, 6'
	$tabpage4.Size = New-Object System.Drawing.Size(1969, 971)
	$tabpage4.TabIndex = 3
	$tabpage4.Text = 'MSIX'
	$tabpage4.UseVisualStyleBackColor = $True
	#
	# label1
	#
	$label1.AutoSize = $True
	$label1.Location = New-Object System.Drawing.Point(849, 388)
	$label1.Margin = '11, 0, 11, 0'
	$label1.Name = 'label1'
	$label1.Size = New-Object System.Drawing.Size(241, 25)
	$label1.TabIndex = 1
	$label1.Text = 'Nog invulling aan te geven'
	#
	# tabpage5
	#
	$tabpage5.Controls.Add($exe_panel1)
	$tabpage5.Controls.Add($exe_output_textbox1)
	$tabpage5.Controls.Add($exe_maakPackageDir_button1)
	$tabpage5.Controls.Add($exe_pversie_label1)
	$tabpage5.Controls.Add($exe_packagenaam_label1)
	$tabpage5.Controls.Add($exe_versie_textbox1)
	$tabpage5.Controls.Add($exe_packagenaam_textbox1)
	$tabpage5.Controls.Add($exe_label1)
	$tabpage5.Controls.Add($openexe_label1)
	$tabpage5.Controls.Add($openexe_button1)
	$tabpage5.Location = New-Object System.Drawing.Point(4, 33)
	$tabpage5.Margin = '6, 6, 6, 6'
	$tabpage5.Name = 'tabpage5'
	$tabpage5.Padding = '6, 6, 6, 6'
	$tabpage5.Size = New-Object System.Drawing.Size(1969, 971)
	$tabpage5.TabIndex = 4
	$tabpage5.Text = 'EXE'
	$tabpage5.UseVisualStyleBackColor = $True
	$tabpage5.add_Click($tabpage5_Click)
	#
	# exe_panel1
	#
	$exe_panel1.Controls.Add($exe_uploadlogo_button1)
	$exe_panel1.Controls.Add($exe_maak_intuneWIN_button1)
	$exe_panel1.Controls.Add($exe_maakScripting_button1)
	$exe_panel1.Controls.Add($exe_test_uninstall_button1)
	$exe_panel1.Controls.Add($exeparsUnInstall_textbox1)
	$exe_panel1.Controls.Add($exe_labelVoorbeeldUninstall)
	$exe_panel1.Controls.Add($uninstall_exe_path_textbox2)
	$exe_panel1.Controls.Add($radiobuttonGebruikZelfdeEXEAlsB)
	$exe_panel1.Controls.Add($radiobuttonUninstallEXEPath)
	$exe_panel1.Controls.Add($exeUnlInstallParameters)
	$exe_panel1.Controls.Add($exe_install_test_button1)
	$exe_panel1.Controls.Add($exe_output_installparameters)
	$exe_panel1.Controls.Add($exe_parsInstall_textbox1)
	$exe_panel1.Controls.Add($exe_install_par_label1)
	$exe_panel1.Enabled = $False
	$exe_panel1.Location = New-Object System.Drawing.Point(35, 266)
	$exe_panel1.Margin = '6, 6, 6, 6'
	$exe_panel1.Name = 'exe_panel1'
	$exe_panel1.Size = New-Object System.Drawing.Size(959, 606)
	$exe_panel1.TabIndex = 9
	$exe_panel1.Visible = $False
	$exe_panel1.add_Paint($exe_panel1_Paint)
	#
	# exe_uploadlogo_button1
	#
	$exe_uploadlogo_button1.Enabled = $False
	$exe_uploadlogo_button1.Location = New-Object System.Drawing.Point(682, 384)
	$exe_uploadlogo_button1.Margin = '6, 6, 6, 6'
	$exe_uploadlogo_button1.Name = 'exe_uploadlogo_button1'
	$exe_uploadlogo_button1.Size = New-Object System.Drawing.Size(229, 42)
	$exe_uploadlogo_button1.TabIndex = 27
	$exe_uploadlogo_button1.Text = 'Upload Logo (PNG)'
	$exe_uploadlogo_button1.UseVisualStyleBackColor = $True
	$exe_uploadlogo_button1.Visible = $False
	$exe_uploadlogo_button1.add_Click($exe_uploadlogo_button1_Click)
	#
	# exe_maak_intuneWIN_button1
	#
	$exe_maak_intuneWIN_button1.Location = New-Object System.Drawing.Point(682, 330)
	$exe_maak_intuneWIN_button1.Margin = '6, 6, 6, 6'
	$exe_maak_intuneWIN_button1.Name = 'exe_maak_intuneWIN_button1'
	$exe_maak_intuneWIN_button1.Size = New-Object System.Drawing.Size(229, 42)
	$exe_maak_intuneWIN_button1.TabIndex = 26
	$exe_maak_intuneWIN_button1.Text = '4. Maak Intunewin file'
	$exe_maak_intuneWIN_button1.UseVisualStyleBackColor = $True
	$exe_maak_intuneWIN_button1.add_Click($exe_maak_intuneWIN_button1_Click)
	#
	# exe_maakScripting_button1
	#
	$exe_maakScripting_button1.Location = New-Object System.Drawing.Point(15, 330)
	$exe_maakScripting_button1.Margin = '6, 6, 6, 6'
	$exe_maakScripting_button1.Name = 'exe_maakScripting_button1'
	$exe_maakScripting_button1.Size = New-Object System.Drawing.Size(218, 42)
	$exe_maakScripting_button1.TabIndex = 25
	$exe_maakScripting_button1.Text = '1. Maak Scripts'
	$exe_maakScripting_button1.UseVisualStyleBackColor = $True
	$exe_maakScripting_button1.add_Click($exe_maakScripting_button1_Click)
	#
	# exe_test_uninstall_button1
	#
	$exe_test_uninstall_button1.Location = New-Object System.Drawing.Point(451, 330)
	$exe_test_uninstall_button1.Margin = '6, 6, 6, 6'
	$exe_test_uninstall_button1.Name = 'exe_test_uninstall_button1'
	$exe_test_uninstall_button1.Size = New-Object System.Drawing.Size(220, 42)
	$exe_test_uninstall_button1.TabIndex = 24
	$exe_test_uninstall_button1.Text = '3. Test Uninstall'
	$exe_test_uninstall_button1.UseVisualStyleBackColor = $True
	$exe_test_uninstall_button1.add_Click($exe_test_uninstall_button1_Click)
	#
	# exeparsUnInstall_textbox1
	#
	$exeparsUnInstall_textbox1.Location = New-Object System.Drawing.Point(13, 244)
	$exeparsUnInstall_textbox1.Margin = '7, 7, 7, 7'
	$exeparsUnInstall_textbox1.Name = 'exeparsUnInstall_textbox1'
	$exeparsUnInstall_textbox1.Size = New-Object System.Drawing.Size(836, 29)
	$exeparsUnInstall_textbox1.TabIndex = 23
	$exeparsUnInstall_textbox1.Text = 'Parameters for Unattended Uninstallation; Voorbeeld: @("/L=1033", "/S")'
	$exeparsUnInstall_textbox1.add_TextChanged($exeparsUnInstall_textbox1_TextChanged)
	#
	# exe_labelVoorbeeldUninstall
	#
	$exe_labelVoorbeeldUninstall.AutoSize = $True
	$exe_labelVoorbeeldUninstall.Location = New-Object System.Drawing.Point(13, 284)
	$exe_labelVoorbeeldUninstall.Margin = '11, 0, 11, 0'
	$exe_labelVoorbeeldUninstall.Name = 'exe_labelVoorbeeldUninstall'
	$exe_labelVoorbeeldUninstall.Size = New-Object System.Drawing.Size(185, 25)
	$exe_labelVoorbeeldUninstall.TabIndex = 22
	$exe_labelVoorbeeldUninstall.Text = 'Voorbeeld un-install'
	$exe_labelVoorbeeldUninstall.add_Click($exe_labelVoorbeeldUninstall_Click)
	#
	# uninstall_exe_path_textbox2
	#
	$uninstall_exe_path_textbox2.Enabled = $False
	$uninstall_exe_path_textbox2.Location = New-Object System.Drawing.Point(13, 203)
	$uninstall_exe_path_textbox2.Margin = '11, 11, 11, 11'
	$uninstall_exe_path_textbox2.Name = 'uninstall_exe_path_textbox2'
	$uninstall_exe_path_textbox2.Size = New-Object System.Drawing.Size(836, 29)
	$uninstall_exe_path_textbox2.TabIndex = 21
	$uninstall_exe_path_textbox2.Text = 'Path voor un-install; bijvoorbeeld: "c:\Program Files\VideoLAN\VLC\uninstall.exe"'
	$uninstall_exe_path_textbox2.Visible = $False
	$uninstall_exe_path_textbox2.add_TextChanged($uninstall_exe_path_textbox2_TextChanged)
	#
	# radiobuttonGebruikZelfdeEXEAlsB
	#
	$radiobuttonGebruikZelfdeEXEAlsB.Location = New-Object System.Drawing.Point(244, 148)
	$radiobuttonGebruikZelfdeEXEAlsB.Margin = '6, 6, 6, 6'
	$radiobuttonGebruikZelfdeEXEAlsB.Name = 'radiobuttonGebruikZelfdeEXEAlsB'
	$radiobuttonGebruikZelfdeEXEAlsB.Size = New-Object System.Drawing.Size(324, 44)
	$radiobuttonGebruikZelfdeEXEAlsB.TabIndex = 20
	$radiobuttonGebruikZelfdeEXEAlsB.TabStop = $True
	$radiobuttonGebruikZelfdeEXEAlsB.Text = 'Gebruik zelfde EXE als bij Install'
	$radiobuttonGebruikZelfdeEXEAlsB.UseVisualStyleBackColor = $True
	$radiobuttonGebruikZelfdeEXEAlsB.add_CheckedChanged($radiobuttonGebruikZelfdeEXEAlsB_CheckedChanged)
	#
	# radiobuttonUninstallEXEPath
	#
	$radiobuttonUninstallEXEPath.Location = New-Object System.Drawing.Point(13, 148)
	$radiobuttonUninstallEXEPath.Margin = '6, 6, 6, 6'
	$radiobuttonUninstallEXEPath.Name = 'radiobuttonUninstallEXEPath'
	$radiobuttonUninstallEXEPath.Size = New-Object System.Drawing.Size(220, 44)
	$radiobuttonUninstallEXEPath.TabIndex = 19
	$radiobuttonUninstallEXEPath.TabStop = $True
	$radiobuttonUninstallEXEPath.Text = 'Uninstall EXE Path'
	$radiobuttonUninstallEXEPath.UseVisualStyleBackColor = $True
	$radiobuttonUninstallEXEPath.add_CheckedChanged($radiobuttonUninstallEXEPath_CheckedChanged)
	#
	# exeUnlInstallParameters
	#
	$exeUnlInstallParameters.AutoSize = $True
	$exeUnlInstallParameters.Location = New-Object System.Drawing.Point(11, 118)
	$exeUnlInstallParameters.Margin = '11, 0, 11, 0'
	$exeUnlInstallParameters.Name = 'exeUnlInstallParameters'
	$exeUnlInstallParameters.Size = New-Object System.Drawing.Size(191, 25)
	$exeUnlInstallParameters.TabIndex = 18
	$exeUnlInstallParameters.Text = 'Uninstall Parameters'
	#
	# exe_install_test_button1
	#
	$exe_install_test_button1.Location = New-Object System.Drawing.Point(255, 330)
	$exe_install_test_button1.Margin = '6, 6, 6, 6'
	$exe_install_test_button1.Name = 'exe_install_test_button1'
	$exe_install_test_button1.Size = New-Object System.Drawing.Size(185, 42)
	$exe_install_test_button1.TabIndex = 17
	$exe_install_test_button1.Text = '2. Test install'
	$exe_install_test_button1.UseVisualStyleBackColor = $True
	$exe_install_test_button1.add_Click($exe_install_test_button1_Click)
	#
	# exe_output_installparameters
	#
	$exe_output_installparameters.AutoSize = $True
	$exe_output_installparameters.Location = New-Object System.Drawing.Point(7, 76)
	$exe_output_installparameters.Margin = '11, 0, 11, 0'
	$exe_output_installparameters.Name = 'exe_output_installparameters'
	$exe_output_installparameters.Size = New-Object System.Drawing.Size(156, 25)
	$exe_output_installparameters.TabIndex = 16
	$exe_output_installparameters.Text = 'Voorbeeld install'
	$exe_output_installparameters.add_Click($exe_output_installparameters_Click)
	#
	# exe_parsInstall_textbox1
	#
	$exe_parsInstall_textbox1.Location = New-Object System.Drawing.Point(9, 35)
	$exe_parsInstall_textbox1.Margin = '7, 7, 7, 7'
	$exe_parsInstall_textbox1.Name = 'exe_parsInstall_textbox1'
	$exe_parsInstall_textbox1.Size = New-Object System.Drawing.Size(836, 29)
	$exe_parsInstall_textbox1.TabIndex = 6
	$exe_parsInstall_textbox1.Text = 'Parameters for Unattended Installation; Example: @("/L=1033", "/S")'
	$exe_parsInstall_textbox1.add_TextChanged($exe_parsInstall_textbox1_TextChanged)
	#
	# exe_install_par_label1
	#
	$exe_install_par_label1.AutoSize = $True
	$exe_install_par_label1.Location = New-Object System.Drawing.Point(9, 7)
	$exe_install_par_label1.Margin = '11, 0, 11, 0'
	$exe_install_par_label1.Name = 'exe_install_par_label1'
	$exe_install_par_label1.Size = New-Object System.Drawing.Size(167, 25)
	$exe_install_par_label1.TabIndex = 0
	$exe_install_par_label1.Text = 'Install Parameters'
	#
	# exe_output_textbox1
	#
	$exe_output_textbox1.Location = New-Object System.Drawing.Point(1040, 20)
	$exe_output_textbox1.Margin = '11, 11, 11, 11'
	$exe_output_textbox1.Multiline = $True
	$exe_output_textbox1.Name = 'exe_output_textbox1'
	$exe_output_textbox1.Size = New-Object System.Drawing.Size(838, 1265)
	$exe_output_textbox1.TabIndex = 8
	$exe_output_textbox1.add_TextChanged($exe_output_textbox1_TextChanged)
	#
	# exe_maakPackageDir_button1
	#
	$exe_maakPackageDir_button1.Location = New-Object System.Drawing.Point(205, 177)
	$exe_maakPackageDir_button1.Margin = '6, 6, 6, 6'
	$exe_maakPackageDir_button1.Name = 'exe_maakPackageDir_button1'
	$exe_maakPackageDir_button1.Size = New-Object System.Drawing.Size(293, 42)
	$exe_maakPackageDir_button1.TabIndex = 7
	$exe_maakPackageDir_button1.Text = 'Maak Package Directory'
	$exe_maakPackageDir_button1.UseVisualStyleBackColor = $True
	$exe_maakPackageDir_button1.add_Click($exe_maakPackageDir_button1_Click)
	#
	# exe_pversie_label1
	#
	$exe_pversie_label1.AutoSize = $True
	$exe_pversie_label1.Location = New-Object System.Drawing.Point(35, 129)
	$exe_pversie_label1.Margin = '11, 0, 11, 0'
	$exe_pversie_label1.Name = 'exe_pversie_label1'
	$exe_pversie_label1.Size = New-Object System.Drawing.Size(68, 25)
	$exe_pversie_label1.TabIndex = 6
	$exe_pversie_label1.Text = 'Versie'
	#
	# exe_packagenaam_label1
	#
	$exe_packagenaam_label1.AutoSize = $True
	$exe_packagenaam_label1.Location = New-Object System.Drawing.Point(35, 81)
	$exe_packagenaam_label1.Margin = '11, 0, 11, 0'
	$exe_packagenaam_label1.Name = 'exe_packagenaam_label1'
	$exe_packagenaam_label1.Size = New-Object System.Drawing.Size(146, 25)
	$exe_packagenaam_label1.TabIndex = 5
	$exe_packagenaam_label1.Text = 'Package Naam'
	#
	# exe_versie_textbox1
	#
	$exe_versie_textbox1.Location = New-Object System.Drawing.Point(205, 129)
	$exe_versie_textbox1.Margin = '11, 11, 11, 11'
	$exe_versie_textbox1.Name = 'exe_versie_textbox1'
	$exe_versie_textbox1.Size = New-Object System.Drawing.Size(290, 29)
	$exe_versie_textbox1.TabIndex = 4
	$exe_versie_textbox1.add_TextChanged($exe_versie_textbox1_TextChanged)
	#
	# exe_packagenaam_textbox1
	#
	$exe_packagenaam_textbox1.Location = New-Object System.Drawing.Point(205, 81)
	$exe_packagenaam_textbox1.Margin = '11, 11, 11, 11'
	$exe_packagenaam_textbox1.Name = 'exe_packagenaam_textbox1'
	$exe_packagenaam_textbox1.Size = New-Object System.Drawing.Size(290, 29)
	$exe_packagenaam_textbox1.TabIndex = 3
	$exe_packagenaam_textbox1.add_TextChanged($exe_packagenaam_textbox1_TextChanged)
	#
	# exe_label1
	#
	$exe_label1.AutoSize = $True
	$exe_label1.Location = New-Object System.Drawing.Point(182, 26)
	$exe_label1.Margin = '11, 0, 11, 0'
	$exe_label1.Name = 'exe_label1'
	$exe_label1.Size = New-Object System.Drawing.Size(64, 25)
	$exe_label1.TabIndex = 2
	$exe_label1.Text = 'label1'
	$exe_label1.Visible = $False
	$exe_label1.add_Click($exe_label1_Click)
	#
	# openexe_label1
	#
	$openexe_label1.AutoSize = $True
	$openexe_label1.Location = New-Object System.Drawing.Point(182, 26)
	$openexe_label1.Margin = '11, 0, 11, 0'
	$openexe_label1.Name = 'openexe_label1'
	$openexe_label1.Size = New-Object System.Drawing.Size(0, 25)
	$openexe_label1.TabIndex = 1
	#
	# openexe_button1
	#
	$openexe_button1.Location = New-Object System.Drawing.Point(15, 17)
	$openexe_button1.Margin = '6, 6, 6, 6'
	$openexe_button1.Name = 'openexe_button1'
	$openexe_button1.Size = New-Object System.Drawing.Size(138, 42)
	$openexe_button1.TabIndex = 0
	$openexe_button1.Text = 'Open EXE File'
	$openexe_button1.UseVisualStyleBackColor = $True
	$openexe_button1.add_Click($openexe_button1_Click)
	#
	# tabpage6
	#
	$tabpage6.Controls.Add($labelNogInvullingAanTeGev)
	$tabpage6.Location = New-Object System.Drawing.Point(4, 33)
	$tabpage6.Margin = '6, 6, 6, 6'
	$tabpage6.Name = 'tabpage6'
	$tabpage6.Padding = '6, 6, 6, 6'
	$tabpage6.Size = New-Object System.Drawing.Size(1969, 971)
	$tabpage6.TabIndex = 5
	$tabpage6.Text = 'Powershell'
	$tabpage6.UseVisualStyleBackColor = $True
	#
	# labelNogInvullingAanTeGev
	#
	$labelNogInvullingAanTeGev.AutoSize = $True
	$labelNogInvullingAanTeGev.Location = New-Object System.Drawing.Point(865, 362)
	$labelNogInvullingAanTeGev.Margin = '11, 0, 11, 0'
	$labelNogInvullingAanTeGev.Name = 'labelNogInvullingAanTeGev'
	$labelNogInvullingAanTeGev.Size = New-Object System.Drawing.Size(241, 25)
	$labelNogInvullingAanTeGev.TabIndex = 0
	$labelNogInvullingAanTeGev.Text = 'Nog invulling aan te geven'
	#
	# tools_tabpage7
	#
	$tools_tabpage7.Controls.Add($zoek_uninstallstring_Syswow_button1)
	$tools_tabpage7.Controls.Add($Tools_zoekUninstall_String_button1)
	$tools_tabpage7.Controls.Add($toolsOutput_textbox1)
	$tools_tabpage7.Location = New-Object System.Drawing.Point(4, 33)
	$tools_tabpage7.Margin = '6, 6, 6, 6'
	$tools_tabpage7.Name = 'tools_tabpage7'
	$tools_tabpage7.Padding = '6, 6, 6, 6'
	$tools_tabpage7.Size = New-Object System.Drawing.Size(1969, 971)
	$tools_tabpage7.TabIndex = 6
	$tools_tabpage7.Text = 'Tools'
	$tools_tabpage7.UseVisualStyleBackColor = $True
	#
	# zoek_uninstallstring_Syswow_button1
	#
	$zoek_uninstallstring_Syswow_button1.Location = New-Object System.Drawing.Point(35, 98)
	$zoek_uninstallstring_Syswow_button1.Margin = '6, 6, 6, 6'
	$zoek_uninstallstring_Syswow_button1.Name = 'zoek_uninstallstring_Syswow_button1'
	$zoek_uninstallstring_Syswow_button1.Size = New-Object System.Drawing.Size(390, 59)
	$zoek_uninstallstring_Syswow_button1.TabIndex = 2
	$zoek_uninstallstring_Syswow_button1.Text = 'Uninstallstring WOW6432Node'
	$zoek_uninstallstring_Syswow_button1.TextAlign = 'MiddleLeft'
	$zoek_uninstallstring_Syswow_button1.UseVisualStyleBackColor = $True
	$zoek_uninstallstring_Syswow_button1.add_Click($zoek_uninstallstring_Syswow_button1_Click)
	#
	# Tools_zoekUninstall_String_button1
	#
	$Tools_zoekUninstall_String_button1.Location = New-Object System.Drawing.Point(35, 39)
	$Tools_zoekUninstall_String_button1.Margin = '6, 6, 6, 6'
	$Tools_zoekUninstall_String_button1.Name = 'Tools_zoekUninstall_String_button1'
	$Tools_zoekUninstall_String_button1.Size = New-Object System.Drawing.Size(390, 48)
	$Tools_zoekUninstall_String_button1.TabIndex = 1
	$Tools_zoekUninstall_String_button1.Text = 'Uninstallstring'
	$Tools_zoekUninstall_String_button1.TextAlign = 'MiddleLeft'
	$Tools_zoekUninstall_String_button1.UseVisualStyleBackColor = $True
	$Tools_zoekUninstall_String_button1.add_Click($Tools_zoekUninstall_String_button1_Click)
	#
	# toolsOutput_textbox1
	#
	$toolsOutput_textbox1.Location = New-Object System.Drawing.Point(917, 39)
	$toolsOutput_textbox1.Margin = '11, 11, 11, 11'
	$toolsOutput_textbox1.Multiline = $True
	$toolsOutput_textbox1.Name = 'toolsOutput_textbox1'
	$toolsOutput_textbox1.ScrollBars = 'Vertical'
	$toolsOutput_textbox1.Size = New-Object System.Drawing.Size(998, 1337)
	$toolsOutput_textbox1.TabIndex = 0
	$toolsOutput_textbox1.add_TextChanged($toolsOutput_textbox1_TextChanged)
	#
	# Upload_tabpage7
	#
	$Upload_tabpage7.Controls.Add($deP_label3)
	$Upload_tabpage7.Controls.Add($dep_textbox1)
	$Upload_tabpage7.Controls.Add($tenanturl_label3)
	$Upload_tabpage7.Controls.Add($tenantURL_textbox1)
	$Upload_tabpage7.Controls.Add($upload_button1)
	$Upload_tabpage7.Controls.Add($upload_panel1)
	$Upload_tabpage7.Controls.Add($LoadConfig_button1)
	$Upload_tabpage7.Location = New-Object System.Drawing.Point(4, 33)
	$Upload_tabpage7.Margin = '6, 6, 6, 6'
	$Upload_tabpage7.Name = 'Upload_tabpage7'
	$Upload_tabpage7.Padding = '6, 6, 6, 6'
	$Upload_tabpage7.Size = New-Object System.Drawing.Size(1969, 971)
	$Upload_tabpage7.TabIndex = 7
	$Upload_tabpage7.Text = 'Upload'
	$Upload_tabpage7.UseVisualStyleBackColor = $True
	#
	# deP_label3
	#
	$deP_label3.AutoSize = $True
	$deP_label3.Location = New-Object System.Drawing.Point(348, 603)
	$deP_label3.Margin = '6, 0, 6, 0'
	$deP_label3.Name = 'deP_label3'
	$deP_label3.Size = New-Object System.Drawing.Size(244, 25)
	$deP_label3.TabIndex = 7
	$deP_label3.Text = 'DisplayName Dependency'
	#
	# dep_textbox1
	#
	$dep_textbox1.Location = New-Object System.Drawing.Point(604, 603)
	$dep_textbox1.Margin = '6, 6, 6, 6'
	$dep_textbox1.Name = 'dep_textbox1'
	$dep_textbox1.Size = New-Object System.Drawing.Size(569, 29)
	$dep_textbox1.TabIndex = 6
	$dep_textbox1.add_TextChanged($dep_textbox1_TextChanged)
	#
	# tenanturl_label3
	#
	$tenanturl_label3.AutoSize = $True
	$tenanturl_label3.Location = New-Object System.Drawing.Point(348, 643)
	$tenanturl_label3.Margin = '11, 0, 11, 0'
	$tenanturl_label3.Name = 'tenanturl_label3'
	$tenanturl_label3.Size = New-Object System.Drawing.Size(112, 25)
	$tenanturl_label3.TabIndex = 5
	$tenanturl_label3.Text = 'TenantURL'
	#
	# tenantURL_textbox1
	#
	$tenantURL_textbox1.Location = New-Object System.Drawing.Point(604, 643)
	$tenantURL_textbox1.Margin = '11, 11, 11, 11'
	$tenantURL_textbox1.Name = 'tenantURL_textbox1'
	$tenantURL_textbox1.Size = New-Object System.Drawing.Size(569, 29)
	$tenantURL_textbox1.TabIndex = 4
	$tenantURL_textbox1.Text = 'CSNTestRink.onmicrosoft.com'
	$tenantURL_textbox1.add_TextChanged($tenantURL_textbox1_TextChanged)
	#
	# upload_button1
	#
	$upload_button1.Location = New-Object System.Drawing.Point(1199, 630)
	$upload_button1.Margin = '6, 6, 6, 6'
	$upload_button1.Name = 'upload_button1'
	$upload_button1.Size = New-Object System.Drawing.Size(204, 42)
	$upload_button1.TabIndex = 3
	$upload_button1.Text = 'Upload to Intune'
	$upload_button1.UseVisualStyleBackColor = $True
	$upload_button1.add_Click($upload_button1_Click)
	#
	# upload_panel1
	#
	$upload_panel1.Controls.Add($uninstallCMD_textbox1)
	$upload_panel1.Controls.Add($installCMD_textbox1)
	$upload_panel1.Controls.Add($regValue_textbox1)
	$upload_panel1.Controls.Add($reglocation_textbox1)
	$upload_panel1.Controls.Add($AppVersion_textbox1)
	$upload_panel1.Controls.Add($Publisher_textbox1)
	$upload_panel1.Controls.Add($DisplayName_textbox1)
	$upload_panel1.Controls.Add($IntuneWinFile_textbox1)
	$upload_panel1.Controls.Add($uninstallCMD_label1)
	$upload_panel1.Controls.Add($installCMD_label1)
	$upload_panel1.Controls.Add($regValue_label1)
	$upload_panel1.Controls.Add($reglocation_label1)
	$upload_panel1.Controls.Add($AppVersion_label1)
	$upload_panel1.Controls.Add($Publisher_label1)
	$upload_panel1.Controls.Add($DisplayName_label1)
	$upload_panel1.Controls.Add($IntuneWinFile_label3)
	$upload_panel1.Location = New-Object System.Drawing.Point(16, 102)
	$upload_panel1.Margin = '6, 6, 6, 6'
	$upload_panel1.Name = 'upload_panel1'
	$upload_panel1.Size = New-Object System.Drawing.Size(1248, 478)
	$upload_panel1.TabIndex = 2
	#
	# uninstallCMD_textbox1
	#
	$uninstallCMD_textbox1.Location = New-Object System.Drawing.Point(213, 345)
	$uninstallCMD_textbox1.Margin = '11, 11, 11, 11'
	$uninstallCMD_textbox1.Name = 'uninstallCMD_textbox1'
	$uninstallCMD_textbox1.Size = New-Object System.Drawing.Size(759, 29)
	$uninstallCMD_textbox1.TabIndex = 16
	#
	# installCMD_textbox1
	#
	$installCMD_textbox1.Location = New-Object System.Drawing.Point(213, 297)
	$installCMD_textbox1.Margin = '11, 11, 11, 11'
	$installCMD_textbox1.Name = 'installCMD_textbox1'
	$installCMD_textbox1.Size = New-Object System.Drawing.Size(759, 29)
	$installCMD_textbox1.TabIndex = 15
	$installCMD_textbox1.add_TextChanged($installCMD_textbox1_TextChanged)
	#
	# regValue_textbox1
	#
	$regValue_textbox1.Location = New-Object System.Drawing.Point(213, 249)
	$regValue_textbox1.Margin = '11, 11, 11, 11'
	$regValue_textbox1.Name = 'regValue_textbox1'
	$regValue_textbox1.Size = New-Object System.Drawing.Size(759, 29)
	$regValue_textbox1.TabIndex = 14
	$regValue_textbox1.add_TextChanged($regValue_textbox1_TextChanged)
	#
	# reglocation_textbox1
	#
	$reglocation_textbox1.Location = New-Object System.Drawing.Point(213, 201)
	$reglocation_textbox1.Margin = '11, 11, 11, 11'
	$reglocation_textbox1.Name = 'reglocation_textbox1'
	$reglocation_textbox1.Size = New-Object System.Drawing.Size(759, 29)
	$reglocation_textbox1.TabIndex = 13
	$reglocation_textbox1.add_TextChanged($reglocation_textbox1_TextChanged)
	#
	# AppVersion_textbox1
	#
	$AppVersion_textbox1.Location = New-Object System.Drawing.Point(213, 153)
	$AppVersion_textbox1.Margin = '11, 11, 11, 11'
	$AppVersion_textbox1.Name = 'AppVersion_textbox1'
	$AppVersion_textbox1.Size = New-Object System.Drawing.Size(759, 29)
	$AppVersion_textbox1.TabIndex = 12
	$AppVersion_textbox1.add_TextChanged($AppVersion_textbox1_TextChanged)
	#
	# Publisher_textbox1
	#
	$Publisher_textbox1.Location = New-Object System.Drawing.Point(213, 105)
	$Publisher_textbox1.Margin = '11, 11, 11, 11'
	$Publisher_textbox1.Name = 'Publisher_textbox1'
	$Publisher_textbox1.Size = New-Object System.Drawing.Size(759, 29)
	$Publisher_textbox1.TabIndex = 11
	$Publisher_textbox1.add_TextChanged($Publisher_textbox1_TextChanged)
	#
	# DisplayName_textbox1
	#
	$DisplayName_textbox1.Location = New-Object System.Drawing.Point(213, 57)
	$DisplayName_textbox1.Margin = '11, 11, 11, 11'
	$DisplayName_textbox1.Name = 'DisplayName_textbox1'
	$DisplayName_textbox1.Size = New-Object System.Drawing.Size(759, 29)
	$DisplayName_textbox1.TabIndex = 10
	$DisplayName_textbox1.add_TextChanged($DisplayName_textbox1_TextChanged)
	#
	# IntuneWinFile_textbox1
	#
	$IntuneWinFile_textbox1.Location = New-Object System.Drawing.Point(213, 11)
	$IntuneWinFile_textbox1.Margin = '11, 11, 11, 11'
	$IntuneWinFile_textbox1.Name = 'IntuneWinFile_textbox1'
	$IntuneWinFile_textbox1.Size = New-Object System.Drawing.Size(759, 29)
	$IntuneWinFile_textbox1.TabIndex = 9
	$IntuneWinFile_textbox1.add_TextChanged($IntuneWinFile_textbox1_TextChanged)
	#
	# uninstallCMD_label1
	#
	$uninstallCMD_label1.AutoSize = $True
	$uninstallCMD_label1.Location = New-Object System.Drawing.Point(26, 351)
	$uninstallCMD_label1.Margin = '11, 0, 11, 0'
	$uninstallCMD_label1.Name = 'uninstallCMD_label1'
	$uninstallCMD_label1.Size = New-Object System.Drawing.Size(182, 25)
	$uninstallCMD_label1.TabIndex = 8
	$uninstallCMD_label1.Text = 'Uninstall Command'
	#
	# installCMD_label1
	#
	$installCMD_label1.AutoSize = $True
	$installCMD_label1.Location = New-Object System.Drawing.Point(51, 303)
	$installCMD_label1.Margin = '11, 0, 11, 0'
	$installCMD_label1.Name = 'installCMD_label1'
	$installCMD_label1.Size = New-Object System.Drawing.Size(157, 25)
	$installCMD_label1.TabIndex = 7
	$installCMD_label1.Text = 'install Command'
	#
	# regValue_label1
	#
	$regValue_label1.AutoSize = $True
	$regValue_label1.Location = New-Object System.Drawing.Point(110, 255)
	$regValue_label1.Margin = '11, 0, 11, 0'
	$regValue_label1.Name = 'regValue_label1'
	$regValue_label1.Size = New-Object System.Drawing.Size(91, 25)
	$regValue_label1.TabIndex = 6
	$regValue_label1.Text = 'regValue'
	#
	# reglocation_label1
	#
	$reglocation_label1.AutoSize = $True
	$reglocation_label1.Location = New-Object System.Drawing.Point(77, 207)
	$reglocation_label1.Margin = '11, 0, 11, 0'
	$reglocation_label1.Name = 'reglocation_label1'
	$reglocation_label1.Size = New-Object System.Drawing.Size(119, 25)
	$reglocation_label1.TabIndex = 5
	$reglocation_label1.Text = 'Reg location'
	#
	# AppVersion_label1
	#
	$AppVersion_label1.AutoSize = $True
	$AppVersion_label1.Location = New-Object System.Drawing.Point(73, 159)
	$AppVersion_label1.Margin = '11, 0, 11, 0'
	$AppVersion_label1.Name = 'AppVersion_label1'
	$AppVersion_label1.Size = New-Object System.Drawing.Size(115, 25)
	$AppVersion_label1.TabIndex = 4
	$AppVersion_label1.Text = 'AppVersion'
	#
	# Publisher_label1
	#
	$Publisher_label1.AutoSize = $True
	$Publisher_label1.Location = New-Object System.Drawing.Point(94, 111)
	$Publisher_label1.Margin = '11, 0, 11, 0'
	$Publisher_label1.Name = 'Publisher_label1'
	$Publisher_label1.Size = New-Object System.Drawing.Size(93, 25)
	$Publisher_label1.TabIndex = 3
	$Publisher_label1.Text = 'Publisher'
	#
	# DisplayName_label1
	#
	$DisplayName_label1.AutoSize = $True
	$DisplayName_label1.Location = New-Object System.Drawing.Point(73, 63)
	$DisplayName_label1.Margin = '11, 0, 11, 0'
	$DisplayName_label1.Name = 'DisplayName_label1'
	$DisplayName_label1.Size = New-Object System.Drawing.Size(128, 25)
	$DisplayName_label1.TabIndex = 2
	$DisplayName_label1.Text = 'DisplayName'
	#
	# IntuneWinFile_label3
	#
	$IntuneWinFile_label3.AutoSize = $True
	$IntuneWinFile_label3.Location = New-Object System.Drawing.Point(68, 17)
	$IntuneWinFile_label3.Margin = '11, 0, 11, 0'
	$IntuneWinFile_label3.Name = 'IntuneWinFile_label3'
	$IntuneWinFile_label3.Size = New-Object System.Drawing.Size(132, 25)
	$IntuneWinFile_label3.TabIndex = 1
	$IntuneWinFile_label3.Text = 'IntuneWinFile'
	#
	# LoadConfig_button1
	#
	$LoadConfig_button1.Location = New-Object System.Drawing.Point(15, 17)
	$LoadConfig_button1.Margin = '6, 6, 6, 6'
	$LoadConfig_button1.Name = 'LoadConfig_button1'
	$LoadConfig_button1.Size = New-Object System.Drawing.Size(205, 54)
	$LoadConfig_button1.TabIndex = 0
	$LoadConfig_button1.Text = 'Load Config.csv'
	$LoadConfig_button1.UseVisualStyleBackColor = $True
	$LoadConfig_button1.add_Click($LoadConfig_button1_Click)
	#
	# menustripTheme
	#
	$menustripTheme.ImageScalingSize = New-Object System.Drawing.Size(20, 20)
	[void]$menustripTheme.Items.Add($themeToolStripMenuItem)
	$menustripTheme.Location = New-Object System.Drawing.Point(0, 0)
	$menustripTheme.Name = 'menustripTheme'
	$menustripTheme.Padding = '9, 4, 0, 4'
	$menustripTheme.ShowItemToolTips = $True
	$menustripTheme.Size = New-Object System.Drawing.Size(2092, 32)
	$menustripTheme.TabIndex = 14
	$menustripTheme.Text = 'menustrip1'
	#
	# themeToolStripMenuItem
	#
	$themeToolStripMenuItem.Alignment = 'Right'
	[void]$themeToolStripMenuItem.DropDownItems.Add($darkToolStripMenuItem)
	[void]$themeToolStripMenuItem.DropDownItems.Add($lightToolStripMenuItem)
	#region Binary Data
	$Formatter_binaryFomatter = New-Object System.Runtime.Serialization.Formatters.Binary.BinaryFormatter
	$System_IO_MemoryStream = New-Object System.IO.MemoryStream (,[byte[]][System.Convert]::FromBase64String('
AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj00LjAuMC4wLCBD
dWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0
ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAALAEAAAKJUE5HDQoaCgAA
AA1JSERSAAAAEAAAABAIBgAAAB/z/2EAAAAEZ0FNQQAAsY8L/GEFAAAACXBIWXMAAA68AAAOvAGV
vHJJAAAAGHRFWHRTb2Z0d2FyZQBwYWludC5uZXQgNC4xLjVkR1hSAAAAqklEQVQ4T2P4//8/RRhC
oAH7qm0T7So2/wDi/1D8zb5qaz9UGg4wDLCr3OqKpAkXtoMqRzUAqNkZi2IceIs1pgFYFeLGKAY4
1OzqxaYIHwaGUwfcACDnOzZFBPA7ZAOwKSCIqWoAZV5wqN3dj0UBXmxfvR0RiBRHIwgATSQ+IVVu
xUxIIECUIZVbbaHKMQ2AAYfaXROBAfsDFDtQ/B2U2KDScAA3gHz8nwEAonU00JrpvTMAAAAASUVO
RK5CYIIL'))
	#endregion
	$themeToolStripMenuItem.Image = $Formatter_binaryFomatter.Deserialize($System_IO_MemoryStream)
	$Formatter_binaryFomatter = $null
	$System_IO_MemoryStream = $null
	$themeToolStripMenuItem.Name = 'themeToolStripMenuItem'
	$themeToolStripMenuItem.Size = New-Object System.Drawing.Size(32, 24)
	$themeToolStripMenuItem.ToolTipText = 'Theme'
	#
	# darkToolStripMenuItem
	#
	$darkToolStripMenuItem.Name = 'darkToolStripMenuItem'
	$darkToolStripMenuItem.Size = New-Object System.Drawing.Size(132, 34)
	$darkToolStripMenuItem.Text = 'Dark'
	$darkToolStripMenuItem.add_Click($darkToolStripMenuItem_Click)
	#
	# lightToolStripMenuItem
	#
	$lightToolStripMenuItem.Name = 'lightToolStripMenuItem'
	$lightToolStripMenuItem.Size = New-Object System.Drawing.Size(132, 34)
	$lightToolStripMenuItem.Text = 'Light'
	$lightToolStripMenuItem.add_Click($lightToolStripMenuItem_Click)
	#
	# exe_openfiledialog1
	#
	$exe_openfiledialog1.FileName = 'exe_openfiledialog1'
	#
	# MSI_openfiledialog1
	#
	$MSI_openfiledialog1.FileName = 'MSI_openfiledialog1'
	#
	# config_csv_openfiledialog1
	#
	$config_csv_openfiledialog1.FileName = 'config_csv_openfiledialog1'
	#
	# UploadLogo_openfiledialog1
	#
	$UploadLogo_openfiledialog1.FileName = 'UploadLogo_openfiledialog1'
	$config_panel.ResumeLayout()
	$menustripTheme.ResumeLayout()
	$upload_panel1.ResumeLayout()
	$Upload_tabpage7.ResumeLayout()
	$tools_tabpage7.ResumeLayout()
	$tabpage6.ResumeLayout()
	$exe_panel1.ResumeLayout()
	$tabpage5.ResumeLayout()
	$tabpage4.ResumeLayout()
	$msi_panel1.ResumeLayout()
	$tabpage3.ResumeLayout()
	$tabpage2.ResumeLayout()
	$tabpage1.ResumeLayout()
	$tabcontrol1.ResumeLayout()
	$formCustomerName.ResumeLayout()
	#endregion Generated Form Code

	#----------------------------------------------

	#Save the initial state of the form
	$InitialFormWindowState = $formCustomerName.WindowState
	#Init the OnLoad event to correct the initial state of the form
	$formCustomerName.add_Load($Form_StateCorrection_Load)
	#Clean up the control events
	$formCustomerName.add_FormClosed($Form_Cleanup_FormClosed)
	#Show the Form
	return $formCustomerName.ShowDialog()

} #End Function

#Call the form
Show-IntunePrepTool_psf | Out-Null
