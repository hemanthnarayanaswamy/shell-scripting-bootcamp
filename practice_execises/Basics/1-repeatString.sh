#Write a function that accepts a non-negative integer n and a string s as parameters, and returns a string of s repeated exactly n times.

#!/bin/bash
repeat=$1
string=$2

result=''

for ((i=0; i<$repeat; i++)); do #for ((i=0; i<repeat; i++)); do 
result+=$string
done

echo $result

# repeat=$1
# string=$2
# result=""
# while [ $repeat -gt 0 ]
# do
#   result="$result$string"
#   ((repeat--))
# done
# echo $result