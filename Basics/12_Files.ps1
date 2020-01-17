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
    $a[$i]
}

# To combine, we can use join, passing in the separator and the variable
$separator = [System.Environment]::NewLine 
$all = [string]::Join($separator, $a)

$all

$all.GetType()

# Supports wildcards
$data = Get-Content "?.txt"
$data

# Set content, it overwritten if file exists. To append, use Add-Content
Set-Content -Value $data -Path "data.txt"
Get-Content "data.txt"

# CSV files
# use it to save objects
Get-Process | Export-Csv "Processes.csv"

# Importing CSV
$processes = Import-Csv "Processes.csv" 
$processes

# XML Files
# Create an XML Template
$courseTemplate = @"
<courses version="1.0">
    <course>
        <name></name>
        <level></level>
    </course>
</courses>
"@

$courseTemplate | Out-File "test.xml"
