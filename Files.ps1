# Working with Files
Clear-Host
Get-ChildItem "?.txt"

Get-Content "a.txt"
$a = Get-Content "a.txt"

Clear-Host
$a

# This is actually an array
$a[0] # hello
$a[2] # Cloud
$a.GetType() # array

# Using a loop
Clear-Host
for($i=0 ; $i -le $a.Count; $i++)
{
    
}