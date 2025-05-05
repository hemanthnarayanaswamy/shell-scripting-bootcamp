# Write a function that removes the spaces from the string, then return the resultant string.

# Examples (Input -> Output):

# "8 j 8   mBliB8g  imjB8B8  jl  B" -> "8j8mBliB8gimjB8B8jlB"
# "8 8 Bi fk8h B 8 BB8B B B  B888 c hl8 BhB fd" -> "88Bifk8hB8BB8BBBB888chl8BhBfd"
# "8aaaaa dddd r     " -> "8aaaaaddddr"
#!/bin/bash

var="$1"
read -a arr <<< "$var"
arrLen=${#arr[@]}
result=""

for (( i=0 ; i<$arrLen ; i++ )); do 
result+="${arr[$i]}"
done 

echo $result

-------------------------------
## Improved Version
#!/bin/bash
# filepath: c:\Users\Hemanth.Narayanaswam\CODING\HEMANTH_GITHUB_STREAK\shell-scripting-bootcamp\practice_execises\Basics\5-removeStringSpace.sh

input="$1"
# Remove all spaces from the string
result="${input// /}"
echo "$result"
