# Your function takes as parameter the number of times the cube has been cut. You must return the number of smaller cubes created by the cuts that have at least one red face.

# To make it clearer, the picture below represents the cube after (from left to right) 0, 1 and 2 cuts have been made.

#!/bin/bash

if [[ $1 -eq 0 ]]; then
    echo 1
    exit 0
else
    result=$(( (n+1)**3 - (n-1)**3 ))
    echo $result
fi

----------------------------------------------------
if [ $1 -eq 0 ]; then
  echo 1
else
  echo $((($1+1)**3-($1-1)**3))
fi