#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

for MONITOR_ID in $(bspc query -M)
do
    export MONITOR=$(bspc query -T -m $MONITOR_ID | jq '.name' -r)
    [[ $MONITOR = 'eDP1' ]] && TYPE='main' || TYPE='default'
    echo "Creating $TYPE bar in $MONITOR"
    polybar $TYPE &
done

echo "Bars launched."
# Wait for bars to be visible by xdo
sleep 0.5
echo $(xdo id -n root)
echo $(xdo id -N Polybar)
xdo below -t $(xdo id -n root) $(xdo id -N Polybar)
echo "Bars moved below root"
