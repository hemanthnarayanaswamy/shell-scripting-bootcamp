# You are given two interior angles (in degrees) of a triangle.

# Write a function to return the 3rd.

# Note: only positive integers will be tested.

#!/bin/bash
a=$1
b=$2

echo $((180 - a - b))
