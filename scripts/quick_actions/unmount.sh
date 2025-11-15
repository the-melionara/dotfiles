#!/bin/bash

OPTION=$(ls /dev/sd* | wofi -d --prompt "Gay Unounter")

if [[ ! -z "$OPTION" ]]; then
  udisksctl unmount -b $OPTION | xargs -I MSG notify-send -u low -t 2000 MSG
fi
