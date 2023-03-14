#!/bin/bash
DIR="$1"
if ! bspc node -f $DIR ; then bspc monitor -f $DIR ; fi
