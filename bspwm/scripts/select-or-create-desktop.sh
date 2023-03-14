#!/bin/bash
SELECTED_DESKTOP=$(bspc query -T -m | jq -r '.desktops[].name' | rofi -dmenu -p "desktop:")
bspc desktop -f $SELECTED_DESKTOP ||
    bspc monitor --add-desktops $SELECTED_DESKTOP &&
    bspc desktop -f $SELECTED_DESKTOP
