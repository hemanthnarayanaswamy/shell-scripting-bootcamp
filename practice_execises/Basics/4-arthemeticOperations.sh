# Perform the basic addition, sub, division, multiplication and modulo opetion on two variables 

#!/bin/bash
a=$1
b=$2

echo Addition: $((a + b))
echo Substraction: $((a - b))
echo Multiply: $((a * b))
echo Division: $((a / b))
echo Modulo: $((a % b))
((a++))
((b--))
echo $a
echo $b