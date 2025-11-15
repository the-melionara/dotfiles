#!/bin/bash

OPTION=$(ls /dev/sd* | wofi -d --prompt "Gay Mounter")

if [[ ! -z "$OPTION" ]]; then
  udisksctl mount -b $OPTION | xargs -I MSG notify-send -u low -t 2000 MSG
fi
