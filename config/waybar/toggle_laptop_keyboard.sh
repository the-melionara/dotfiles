#!/bin/bash
 
CACHE_FILE="/home/mel/.cache/laptop-keyboard-disabled"

if [ -f "$CACHE_FILE" ] ;then
    rm "$CACHE_FILE"
    notify-send -u low -t 2000 "Laptop keyboard enabled"
    sh -c "hyprctl keyword 'device[at-translated-set-2-keyboard]:enabled' 1"
else
    touch "$CACHE_FILE"
    notify-send -u low -t 2000 "Laptop keyboard disabled"
    sh -c "hyprctl keyword 'device[at-translated-set-2-keyboard]:enabled' 0"
fi
