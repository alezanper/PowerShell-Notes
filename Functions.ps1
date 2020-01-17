# Functions are scripts blocks with names
function Get-Fullname($firstName, $lastName)
{
    Write-Host($firstName + " " + $lastName)
}

Get-Fullname "Alex" "Benavides"

# Passing as reference
function Set-Var([ref] $myparam)
{
    $myparam.Value = 65
}

Clear-Host
$var = 56
"var before: $var"
Set-Var([ref] $var)
"var after: $var"

# Read from pipeline
function Get-Coolfiles ()
{
    begin { $retval = "Here are some cool files: `r`n"}
    process {
                if ($_.Name -like "*.ps1")
                { $retval = $retval + "`t" + $_.Name + "`r`n" }
            }
    end { return $retval }
}

Clear-Host
Get-ChildItem | Get-Coolfiles

# Filters can be built to remove unwanted files
filter Show-PS1Files
{
    $filename = $_.Name
    if ($filename -like "*.ps1")
    {
        return $_
    }
}

Clear-Host
Get-ChildItem | Show-PS1Files

# Handling errors
function div($num, $den)
{
    $result = $num / $den
    Write-Host "Result: $result"

    trap [System.DivideByZeroException]
    {
        Write-Host "You can't divide by zero!"
        continue
    }

    trap
    {
    Write-Host "error detected"
    Write-Host $_.ErrorID
    Write-Host $_.Exception.Message
    continue # Will continue with the next line of code after the error
    }
}

Clear-Host
div 45 0