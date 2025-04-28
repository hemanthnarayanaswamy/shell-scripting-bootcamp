# Exercise: Area of a Circle (Floating-Point)**
# Write a script to:
# 1. Take the radius of a circle as input (via command-line argument or user prompt).
# 2. Validate that the input is a positive floating-point number.
# 3. Calculate the area using the formula:  
#    `Area = π * r^2` (use π ≈ 3.14159)
# 4. Print the area rounded to two decimal places.

#!/bin/bash
r=$1
pi=3.14159

echo "scale=2; $pi * $r * $r" | bc