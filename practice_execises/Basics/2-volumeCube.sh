#!/bin/bash
# Bob needs a fast way to calculate the volume of a rectangular cuboid with three values: the length, width and height of the cuboid.

# Write a function to help Bob with this calculation.
length=$1
width=$2
height=$3

echo "$(echo "$lenght * $width * $height" | bc)"

echo "$(bc <<< "$length * $width * $height")"

# Summary: 
# - The inner `echo` builds the math expression.
# - The pipe sends it to `bc` for calculation.
# - The outer `echo` prints the result.
# - Quotes are for safety and correctness.