#!/bin/bash
BATPRESENT=$(cat /sys/class/power_supply/BAT0/present)
TIMEOUT=5

# Print the percentage
while [ "$BATPRESENT" -eq "1" ]; do
    BATPERCENT=$(cat /sys/class/power_supply/BAT0/capacity)
    echo "B$BATPERCENT%"
    sleep $TIMEOUT;
done
