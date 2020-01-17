# Simple Array
Clear-Host
$array = "Cloud", "Engineer"
$array[0]
$array[1]
$array
$array.GetType()

# Updating arrays
$array = "Cloud", "Engineer"
$array[0] = "Devops"
$array[1] = "PowerShell"

# Formal Array creation syntax
$array = @("Cloud", "Engineer")
$array

$array = 1..10 #Loading numbers between 1 and 10
$array

# Checking for elements on array
$numbers = 1..5
$numbers -contains 7 # False
$numbers -contains 2 # True



