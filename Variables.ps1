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


