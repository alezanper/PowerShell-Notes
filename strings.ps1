# Using quotes
"I'm a cloud engineer learning Powershell"
'I''m a cloud engineer learning Powershell'

# New Line
"Hello `nWorld"

# Tabs
"Hello `tworld"

# Saving a lot od text

$mytext = @"
Hello World
Another line
second line

Final line
"@
$mytext

# String Interpolation
Set-Location C:\Users\faben
Clear-Host
$items = (Get-ChildItem).Count
$loc = Get-Location

"There are $items items are in the folder $loc."

# Using expressions in strings, need to be wrapped in $()
"The 15% tip of a 33.33 dollar bill is $(33.33 * 0.15) dollars."

# String formatting C# like syntax is supported
[string]::Format("There are {0} items.", $items)

# Powershell shortcut
"There are {0} items." -f $items

"There are {0} items in the location {1}." -f $items, $loc

"The 15% tip of a 33.33 dollar bill is {0} dollars." -f (33.33 * 0.15)
