#!/bin/bash

if [[ -z $1 || -z $2 ]]; then 
echo "Enter the two floating point values for calculation"
exit 1
fi 

# Regex for floating-point numbers (handles .5, 0.5, 5.0, 5)
float_regex='^[-+]?[0-9]*\.?[0-9]+$'

if ! [[ $1 =~ $float_regex && $2 =~ $float_regex ]]; then
  echo "Error: Both inputs must be valid floating-point numbers."
  exit 1
fi

echo "Addition: $(echo "$a + $b" | bc)"
echo "Subtraction: $(echo "$a - $b" | bc)"
echo "Multiplication: $(echo "$a * $b" | bc)"

if [[ $(echo "$b == 0" | bc) -eq 1 ]]; then
  echo "Division: Error (division by zero)"
else
  echo "Division: $(echo "scale=4; $a / $b" | bc)"
fi

# negative of a float number 
echo ${1}*-1 | bc
bc <<< "$1 * -1"