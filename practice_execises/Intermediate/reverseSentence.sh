# Complete the solution so that it reverses all of the words within the string passed in.

# Words are separated by exactly one space and there are no leading or trailing spaces.

# Example(Input --> Output):

# "The greatest victory is that which requires no battle" --> "battle no requires which that is victory greatest The"

#!/bin/bash

sentence="$1"

# Convert the Sentence into the Array
read -a arrSen <<< "$sentence"

arrLen=${#arrSen[@]}

reversedSentence=""

for (( i=$arrLen-1 ; i>=0 ; i-- )); do
reversedSentence+="${arrSen[$i]}" # whenever there is string always use ""
# add space between words
if (( i > 0 )); then
    reversedSentence+=" "
fi
done

echo $reversedSentence

--------------------------------------

## Code using the while Loop 

output=()
read -r -a array <<< "$1"
index=${#array[@]}
((index -= 1))
while [ $index -gt -1 ]; do
    output+=(${array[index]})
    ((index -= 1))
done
echo ${output[@]}

