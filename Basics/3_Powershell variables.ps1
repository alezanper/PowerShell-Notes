# Powershell variables

# False and true
$false
$true

# Null
$null

# Current directory
$pwd

# User home directory
$Home

# Info about a users machine
$host

# Process ID
$PID

# Version of powershell
$PSVersionTable

$_ # Current Object
Get-ChildItem | Where-Object {$_.Name -like "*.ps1"}
