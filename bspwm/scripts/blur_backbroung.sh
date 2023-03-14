while read -r _; do
    bspc query -N -d -n .window.!hidden >/dev/null
    state=$?
    [[ $state != $laststate ]] &&
        { [[ "$state" == 0 ]] && notify-send "its occ" || notify-send "not occ"; }
        laststate=state
    done < <(bspc subscribe)
