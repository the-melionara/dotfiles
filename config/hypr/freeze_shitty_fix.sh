#!/bin/bash

hyprshot -m $1 --clipboard-only &

sleep 5s
killall hyprpicker
