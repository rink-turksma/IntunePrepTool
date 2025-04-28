#--------------------------------------------
# Declare Global Variables and Functions here
#--------------------------------------------


#Sample function that provides the location of the script
function Get-ScriptDirectory
{
<#
	.SYNOPSIS
		Get-ScriptDirectory returns the proper location of the script.

	.OUTPUTS
		System.String
	
	.NOTES
		Returns the correct path within a packaged executable.
#>
	[OutputType([string])]
	param ()
	if ($null -ne $hostinvocation)
	{
		Split-Path $hostinvocation.MyCommand.path
	}
	else
	{
		Split-Path $script:MyInvocation.MyCommand.Path
	}
}

#Sample variable that provides the location of the script
[string]$ScriptDirectory = Get-ScriptDirectory

<#
		.SYNOPSIS
			Converts the 96DPI pixel value to the scaled value determined by the Form control.
		
		.PARAMETER Form
			The Form control that determines the DPI scaling.
		
		.PARAMETER Width
			The width pixel value to convert.
		
		.PARAMETER Height
			The height pixel value to convert.
		
		.EXAMPLE
		$scaledHeight = Convert-ToScaledPixel  -Form $form1 -Height 90
	
		.EXAMPLE
		$scaledWidth = Convert-ToScaledPixel -Form $form1 -Width 90
	#>
function ConvertTo-ScaledPixel
{
	[OutputType([int])]
	param
	(
		[Parameter(ParameterSetName = 'Height',
				   Mandatory = $true,
				   Position = 0)]
		[Parameter(ParameterSetName = 'Width',
				   Mandatory = $true,
				   Position = 0)]
		[ValidateNotNull()]
		[System.Windows.Forms.Form]$Form,
		[Parameter(ParameterSetName = 'Width',
				   Mandatory = $true,
				   Position = 1)]
		[int]$Width,
		[Parameter(ParameterSetName = 'Height',
				   Mandatory = $true,
				   Position = 1)]
		[int]$Height
	)
	switch ($PsCmdlet.ParameterSetName)
	{
		'Height' {
			
			if ($Form.AutoScaleMode -eq 'Font')
			{
				return ($Form.CurrentAutoScaleDimensions.Height / 13) * $Height;
			}
			elseif ($Form.AutoScaleMode -eq 'Dpi')
			{
				return ($Form.CurrentAutoScaleDimensions.Height / 96) * $Height;
			}
			else
			{
				return $Height
			}
			break
		}
		'Width' {
			if ($Form.AutoScaleMode -eq 'Font')
			{
				return ($Form.CurrentAutoScaleDimensions.Width / 6) * $Width;
			}
			elseif ($Form.AutoScaleMode -eq 'Dpi')
			{
				return ($Form.CurrentAutoScaleDimensions.Width / 96) * $Width;
			}
			else
			{
				return $Width
			}
			break
		}
	}
}
<#
	.SYNOPSIS
		Adds a control (with scaling for high DPI) to the container control (Form).
	
	.DESCRIPTION
		Adds a control (with scaling for high DPI) to the container control (Form).
	
	.PARAMETER Parent
		The parent container that the control will be added to.
	
	.PARAMETER Control
		The control that will be added to the parent container control.
	
	.EXAMPLE
				PS C:\> Add-Control -Parent $form1 -Control $button
	
	.NOTES
		Additional information about the function.
#>
function Add-Control
{
	[CmdletBinding()]
	param
	(
			[Parameter(Mandatory = $true,
					   Position = 1)]
			[ValidateNotNull()]
			[System.Windows.Forms.ContainerControl]$Parent,
			[Parameter(Mandatory = $true,
					   Position = 2)]
			[ValidateNotNull()]
			[System.Windows.Forms.Control]$Control
	)
	
	$Parent.SuspendLayout() #Suspends the usual layout logic
	$Parent.AutoScaleDimensions = New-Object System.Drawing.SizeF(6, 13) #Set as if using 96 DPI
	$Parent.AutoScaleMode = 'Font'
	$Parent.Controls.Add($Control)
	$Parent.ResumeLayout() #Resumes the layout logic.
}

$BuildingBlocksTable = New-Object System.Data.DataTable;
	
	## - Defining DataTable object columns and rows properties:
	$column = New-Object System.Data.DataColumn;
	$column.DataType = [System.Type]::GetType("System.String");
	$column.ColumnName = "Context";
	$BuildingBlocksTable.Columns.Add($column);
	
	$column = New-Object System.Data.DataColumn;
	$column.DataType = [System.Type]::GetType("System.String");
	$column.ColumnName = "Sort";
	$BuildingBlocksTable.Columns.Add($column);
	
	$column = New-Object System.Data.DataColumn;
	$column.DataType = [System.Type]::GetType("System.String");
	$column.ColumnName = "Source";
	$BuildingBlocksTable.Columns.Add($column);
	
	
	$column = New-Object System.Data.DataColumn;
	$column.DataType = [System.Type]::GetType("System.String");
	$column.ColumnName = "Destination";
	$BuildingBlocksTable.Columns.Add($column);
	
	$column = New-Object System.Data.DataColumn;
	$column.DataType = [System.Type]::GetType("System.Boolean");
	$column.ColumnName = "Skip";
	$BuildingBlocksTable.Columns.Add($column);
	
	$column = New-Object System.Data.DataColumn;
	$column.DataType = [System.Type]::GetType("System.Boolean");
	$column.ColumnName = "Overwrite";
	$BuildingBlocksTable.Columns.Add($column);

	$column = New-Object System.Data.DataColumn;
	$column.DataType = [System.Type]::GetType("System.Boolean");
	$column.ColumnName = "Uninstall";
	$BuildingBlocksTable.Columns.Add($column);

$BuildingBlocksTable2 = New-Object System.Data.DataTable;

## - Defining DataTable object columns and rows properties:
$column = New-Object System.Data.DataColumn;
$column.DataType = [System.Type]::GetType("System.String");
$column.ColumnName = "Context";
$BuildingBlocksTable2.Columns.Add($column);

$column = New-Object System.Data.DataColumn;
$column.DataType = [System.Type]::GetType("System.String");
$column.ColumnName = "Sort";
$BuildingBlocksTable2.Columns.Add($column);

$column = New-Object System.Data.DataColumn;
$column.DataType = [System.Type]::GetType("System.String");
$column.ColumnName = "Name";
$BuildingBlocksTable2.Columns.Add($column);

$column = New-Object System.Data.DataColumn;
$column.DataType = [System.Type]::GetType("System.String");
$column.ColumnName = "Target location";
$BuildingBlocksTable2.Columns.Add($column);

$column = New-Object System.Data.DataColumn;
$column.DataType = [System.Type]::GetType("System.String");
$column.ColumnName = "Arguments";
$BuildingBlocksTable2.Columns.Add($column);

$column = New-Object System.Data.DataColumn;
$column.DataType = [System.Type]::GetType("System.String");
$column.ColumnName = "ICO File";
$BuildingBlocksTable2.Columns.Add($column);

$column = New-Object System.Data.DataColumn;
$column.DataType = [System.Type]::GetType("System.String");
$column.ColumnName = "Subfolder";
$BuildingBlocksTable2.Columns.Add($column);

$column = New-Object System.Data.DataColumn;
$column.DataType = [System.Type]::GetType("System.Boolean");
$column.ColumnName = "Desktop";
$BuildingBlocksTable2.Columns.Add($column);

$column = New-Object System.Data.DataColumn;
$column.DataType = [System.Type]::GetType("System.Boolean");
$column.ColumnName = "Startmenu";
$BuildingBlocksTable2.Columns.Add($column);

$BuildingBlocksTable3 = New-Object System.Data.DataTable;

## - Defining DataTable object columns and rows properties:
$column = New-Object System.Data.DataColumn;
$column.DataType = [System.Type]::GetType("System.String");
$column.ColumnName = "Context";
$BuildingBlocksTable3.Columns.Add($column);

$column = New-Object System.Data.DataColumn;
$column.DataType = [System.Type]::GetType("System.String");
$column.ColumnName = "Sort";
$BuildingBlocksTable3.Columns.Add($column);

$column = New-Object System.Data.DataColumn;
$column.DataType = [System.Type]::GetType("System.String");
$column.ColumnName = "Source";
$BuildingBlocksTable3.Columns.Add($column);



