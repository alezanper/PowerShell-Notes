# List default Providers
Clear-Host
Get-PSProvider

Clear-Host
Get-PSDrive

# Move to the ENV drive
# Checking for enviromental variables
Clear-Host
Set-Location env:
Get-ChildItem

Clear-Host
Get-ChildItem | Format-Table -Property Name, Value -AutoSize

Clear-Host
Set-Location alias:
Get-ChildItem