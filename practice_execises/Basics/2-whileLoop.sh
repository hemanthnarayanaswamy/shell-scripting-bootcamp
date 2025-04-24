# Create a simple while loop in bash that prints the numbers 1-20 to stdout.

# It should look like (stdout):

# Count: 1
# Count: 2
# ...
# Count: 20
#!/bin/bash

counter=1
countToTwenty() {
    while [[ $counter -le 20 ]] ; do
        echo Count: $counter
        ((counter++))
    done
}

countToTwenty

## Optimal Solution 

# countToTwenty() {
# for i in {1..20}; do echo "Count: ${i}"; done
# }