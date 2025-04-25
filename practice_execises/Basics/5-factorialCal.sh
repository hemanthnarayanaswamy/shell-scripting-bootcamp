# Calculate the factorial of a given number using a `for` 
a=$1 
result=1

if [[ a -eq 1 ]] || [[ a -eq 0 ]] ; then 
echo 1 ; exit
fi

while [[ a -gt 1 ]] 
do 
result=$((result * a))
((a--))
done

echo ${result}

# Add check to see if the user provided the input 
# use for loop to calculate the factorial 

#!/bin/bash
# Calculate the factorial of a given number using a `for` loop

# Input validation: Check if a number is provided
if [[ -z $1 ]]; then
  echo "Please provide a positive number"
  exit 1
fi

# Validate that the input is a positive integer
if ! [[ $1 =~ ^[0-9]+$ ]]; then
  echo "Error: Input must be a positive integer."
  exit 1
fi

# Assign input to variable
a=$1
result=1

# Handle edge case: Factorial of 0
if [[ $a -eq 0 ]]; then
  echo 1
  exit 0
fi

# Calculate factorial using a `for` loop
for ((i = 1; i <= a; i++)); do
  result=$((result * i))
done

# Print the result
echo "Factorial of $a is: $result"

