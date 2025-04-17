    # Exercise 1: Colors of the Rainbow Exercise 1: Colors of the Rainbow Write a shell script in that uses an array to store the names of the seven colors of the rainbow and prints it. 
    # Difficulty level: Easy 
    # Hint: Use an array to store the seven colors of the rainbow: Violet, Indigo, Blue, Green, Yellow, Orange and Red.

#!/bin/bash
rainbow=('violet' 'indigo' 'blue' 'green' 'yellow' 'orange' 'red')
echo ${rainbow[@]}

# Exercise 2: Pick a color 
# Exercise 2: Pick a color Write a shell script in that asks you to pick a color from exercise 1 and print it.
read -p "Pick a number between 0-6: " choice 
echo ${rainbow[$choice]}

# Exercise 3: How many colors of the rainbow? 
# Exercise 3: How many colors of the rainbow? Write a shell script in that prints the number of colors of the rainbow from exercise 1.

echo ${#rainbow[@]}

# Exercise 5: Add another color to the rainbow 
# Exercise 5: Add another color to the rainbow Write a shell script to add an 8th color to the rainbow array described in exercise 1. 
# Hint: Use rainbow+=("cyan") to add the 8th color.

rainbow+=('cyan')
echo ${rainbow[@]}