# Hash Tables
$table = @{"one"   = "uno";
           "two"   = "dos";
           "three" = "tres"}
$table # full table
$table["one"] # returns uno
$table."one" # returns uno 

# Using variables as keys
$one = "one"
$table.$one # returns uno

# Adding values
$table["four"] = "cuatro"
$table

# Removing values
$table.Remove("two")
$table

# Looking for keys
$table.Contains("one") # True

# Looking for values
$table.ContainsValue("uno") # True

# Listing keys and values
$table.Keys
$table.Values
