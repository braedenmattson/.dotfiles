#!/bin/sh
X=1
while [ $X > 0 ]
do
    export CPU=$(echo "CPU"$[100-$(vmstat 1 2|tail -1|awk '{print $15}')]"%")
    export BATT=$(echo $(cat /sys/class/power_supply/BAT0/capacity)"%")
    export TIME=$(TZ='America/Los_Angeles' date | awk -F'[ ]' '{print $4}'|awk -F'[:]' '{print $1":"$2}')
    STATUS="$CPU|$BATT|$TIME " && xsetroot -name $STATUS
done



