
############################################################################
# The first century spans from the year 1 up to and including the year 100, the second century - from the year 101 up to and including the year 200, etc.

# Task
# Given a year, return the century it is in.

# Examples
# 1705 --> 18
# 1900 --> 19
# 1601 --> 17
# 2000 --> 20
# 2742 --> 28
###########################################################################
#!/bin/bash
year=$1

rem=$((year % 100))
century=$((year / 100))

if [[ $rem -eq 0 ]] ; then
    echo $century
else
    echo $((century + 1))
fi

## Optimal Solution 

#echo "$(( (year + 99) / 100 ))"