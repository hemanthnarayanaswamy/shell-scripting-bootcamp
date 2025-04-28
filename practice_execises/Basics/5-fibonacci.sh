# ---

# Exercise: Arithmetic in Loops**
# Write a script to:
# 1. Print the first 10 numbers of the Fibonacci sequence using a `while` loop.
# 2. Use arithmetic operations to calculate each number in the sequence.

# ---

# Requirements:**
# - The Fibonacci sequence starts with `0` and `1`.
# - Each subsequent number is the sum of the previous two numbers.
# - Use a `while` loop to generate the sequence.

#!/bin/bash
a=0
b=1

counter=10

echo $a
echo $b

((counter-=2))  # Already printed two numbers

while [[ counter -gt 0 ]]; do
    c=$((a+b))
    echo $c
    
    a=$b
    b=$c
    ((counter--))
done
