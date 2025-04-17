# TASK

# Your function takes two arguments:

# current father age current age of his son 
# Сalculate how many years ago the father was twice as old as his son (or in how many years he will be twice as old).
# The answer is always greater or equal to 0, no matter if it was in the past or it is in the future.

#!/bin/bash

dad_years_old=$1
son_years_old=$2

twice_age=$((son_years_old * 2))

dad_age_old=$((dad_years_old - twice_age))

if [[ ${dad_age_old} -gt 0 ]]; then
    echo ${dad_age_old}
else
    echo $((-1 * dad_age_old))
fi

#########################################################

x=$(( dad_years_old - son_years_old * 2 ))
echo "${total#-}"

exit