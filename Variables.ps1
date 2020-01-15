# All variables start with a $ sign.

$myVar = "Hello World"

# Printing the value
$myvar


# Showing the type
$myVar.GetType()

# You can re assign values
$myVar = 5
$myVar.GetType()

# You cannot re assign values when you define the variable type
[System.Int32]$myint = 41 # Can make strongly typed variables
$myint
$myint.GetType()

# Assign a string value will fail
$myint = "Will fail"

# There are shortcuts for most .net types
[int] $mynewint = 32
$mynewint.GetType()

[string] $mystring = "testing"
$mystring.GetType()

# Other variable types could be short, float, decimal, single, bool, byte.

# Custom functions
"testing".GetType()
"testing".ToUpper()
"testing".Contains("ting")

# Comparisions
$myint13 = 13

$myint13 -gt 34 # False
$myint13 -lt 34 # True
$myint13 -eq 34 # False

# Operations 
$myresult = 4 * 2 # 8
$myresult

$myresult++ # Increments 
$myresult

# Implicit cast
12 -eq "012" # True, because the string is converted to int
"012" -eq 12 # False, because int is converted to a string

# Long version of $myvar = 15
New-Variable -Name myvar -Value 15

Get-Variable myvar

Get-Variable # It shows all variables

# Assign a new value in the long form
# $myvar = 123
Set-Variable -nAME myvar -Value 123
$myVar

# Clear the contents of a variable
# same as $myvar = $null
Clear-Variable -Name myvar
$myVar

# Removing the variable
Remove-Variable -Name myvar
Get-Variable myvar # Produces an error
 










