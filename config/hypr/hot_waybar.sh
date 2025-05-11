#!/bin/bash
 
trap "killall waybar" EXIT

while true; do
    waybar &
    inotifywait -e create,modify $HOME/dotfiles/config/waybar/*
    killall waybar
done
