# While
Clear-Host
$i = 1
while ($i -le 5)
{
    "`$i = $i"
    $i = $i +1
}

# Do
Clear-Host
$i  =  1
do
{
    "`$i = $i"
    $i++
} while ($i -le 5


# For loop
Clear-Host
for ($f = 0; $f -le 5; $f++)
{
    "`$f = $f"
}

# Iterating over a collection 1 by 1
Clear-Host
$array = 11, 12, 13, 14, 15 # Simple Array
for ($i=0; $i -lt $array.Length; $i++)
{
    "`$array[$i] = " + $array[$i]
}


# Using foreach
Clear-Host
$array = 10, 11, 12, 13, 14, 15 # simple array
foreach($item in $array)
{
    "`$item = $item"
}

# foreach works with an arrya of objects
Clear-Host
foreach ($file in Get-ChildItem)
{
    $file.Name
}

# When used in a nested loop, breaj exists to the outer loop
Clear-Host
foreach ($outside in 1..3)
{
    "`$outside=$outside"
    foreach($inside in 4..6)
    {
        "    `$inside = $inside"
    }
}


