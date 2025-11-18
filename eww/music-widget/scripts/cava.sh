#!/bin/bash

bar="▁▂▃▄▅▆▇█"
replacement_dict="s/;//g;"

# Create the dictionary to replace characters with bars
for ((i=0; i<${#bar}; i++))
do
    replacement_dict="${replacement_dict}s/$i/${bar:$i:1}/g;"
done

pipe="/tmp/cava"
if [ -p "$pipe" ]; then
    rm "$pipe"
fi
mkfifo "$pipe"
conf="/tmp/cava_conf" 
echo "[general]
bars = 26
[output]
method = raw  
raw_target = $pipe 
data_format = ascii 
ascii_max_range = 7" > "$conf"
cava -p "$conf" &


while read -r line; do
    echo "$line" | sed "$replacement_dict"
done < "$pipe"