# Create a function that checks if a number n is divisible by two numbers x AND y. All inputs are positive, non-zero numbers.
#!/bin/bash

if [[ $# -ne 3 ]]; then
    echo "Usage: $0 <number> <dicisor1> <divisor2>"
    exit 1
fi

number=$1
div1=$2
div2=$3

if (( number % div1 == 0 && number % div2 == 0 )); then
    echo "true"
else
    echo "false"
fi

---

# if [[ $n%$x -eq 0 && $n%$y -eq 0 ]]; then 
# echo "true"
# else
# echo "false"
# fi

# use (()) for arthemetic or evaluating a arthemetic operations and square backets to check conditions not to perform operations

n=$1; x=$2; y=$3
[[ $((n % x)) == 0 && $((n % y)) == 0 ]] && echo "true" || echo "false"


(( $1%$2 == 0 && $1%$3 == 0 )) && echo true || echo false

# a gate logic is used to evaluate this problems

