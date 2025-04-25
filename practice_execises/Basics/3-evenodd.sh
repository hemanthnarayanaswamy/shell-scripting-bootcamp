
# Write a script that takes an integer as an argument and returns "Even" for even numbers or "Odd" for odd numbers.
#!/bin/bash

a=$(( $1 % 2 ))

if [[ a -eq 0 ]] ; then
    echo "Even"
else
    echo "Odd"
fi

# if [ $(($1 % 2)) -eq 0 ]
#   then echo "Even"
#   else echo "Odd"
# fi