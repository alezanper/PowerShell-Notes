# Conditionals
Clear-Host
$var = 2
if ($var -eq 1) {
"$var is equal to 1"
}
else{
"$var is different to 1"
}

# Switch statement 
Clear-Host
$var = 2
switch ($var){
    1 {"one"}
    2 {"two"}
    3 {"three"}
    default {"default"}
}

# To stop processing once a block is found use break
Clear-Host
$var = 2
switch ($var){
    1 {"one"; break}
    2 {"two"; break}
    3 {"three"; break}
    default {"default"}
}

# Switch works with collections, looping and executing for each match
Clear-Host
switch (3,2,1,55){
    1 {"one"}
    2 {"two"}
    3 {"three"}
    default {"default"}
}

# String compares are case insensitive by default

"hello" -eq "HEllO" # True
