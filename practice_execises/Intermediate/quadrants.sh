: '
Task

Given a point in a Euclidean plane (x and y), return the quadrant the point exists in: 1, 2, 3 or 4 (integer). x and y are non-zero integers, therefore the given point never lies on the axes.

Examples
(1, 2)     => 1
(3, 5)     => 1
(-10, 100) => 2
(-1, -9)   => 3
(19, -56)  => 4
Reference
QuadrantsQuadrants
There are four quadrants:

First quadrant, the quadrant in the top-right, contains all points with positive X and Y
Second quadrant, the quadrant in the top-left, contains all points with negative X, but positive Y
Third quadrant, the quadrant in the bottom-left, contains all points with negative X and Y
Fourth quadrant, the quadrant in the bottom-right, contains all points with positive X, but negative
'
#!/bin/bash
: '
Parameters:
$1 - X coordinate
$2 - Y Coordinate
'
if [[ $1 > 0 ]] ; then
    if [[ $2 > 0 ]] ; then
        echo 1
    else
        echo 4
    fi
else
    if [[ $2 > 0 ]] ; then
        echo 2
    else
        echo 3
    fi
fi

###########################

x=$1
y=$2
[[ $x -ge 0 && $y -ge 0 ]] && echo "1" && exit
[[ $x -lt 0 && $y -ge 0 ]] && echo "2" && exit
[[ $x -lt 0 && $y -lt 0 ]] && echo "3" && exit
[[ $x -ge 0 && $y -lt 0 ]] && echo "4" && exit