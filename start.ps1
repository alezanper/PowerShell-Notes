# Get-command - Retrieves a list of all system commands
Get-Command

# Can expand by searching for just a verb or noun
Get-Command -verb "get"
Get-Command -noun "Service"

# Get-Help can be used to explain a command
Get-Help Get-command
Get-Help Get-command -examples
Get-Help Get-command -detailed
Get-Help Get-command -full

# Most commands can also be passed a -? parameter to get help
Get-Command -?

# Moving around the file tree
# Get-childItem lists all items in current path
Get-ChildItem

# Set-Location will change the current path
Set-location c:\project

# Pipeling - combine CmdLets for power
Get-ChildItem | 
where-object { $_.Length -gt 100kb } | 
Sort-Object Length | 
Format-Table -Property Name, Length -AutoSize

# You can also use the select-object to retrieve certain properties from an object
Get-ChildItem | Select-Object Name, Length