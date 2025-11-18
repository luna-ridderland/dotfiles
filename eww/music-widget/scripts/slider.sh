#!/bin/bash

old=$(playerctl metadata --format '{{position/mpris:length*100}}')
secs=$(playerctl metadata --format '{{mpris:length/1000000}}')
new="$1"
diff=$(echo "($new - $old)/100" | bc -l)
to=$(echo "$diff * $secs" | bc -l)
to=${to#-}
 
if [[ "$diff" == -* ]]; then
    playerctl position "$to-"
else
    playerctl position "$to+"
fi
#echo "$to"
echo "$to"
echo "$1"