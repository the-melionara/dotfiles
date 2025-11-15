#!/bin/bash

OPTION=$(ls ~/dotfiles/config/hypr/shaders | wofi -d --prompt "Gay Shaders")

if [[ ! -z "$OPTION" ]]; then
  hyprctl keyword decoration:screen_shader ~/dotfiles/config/hypr/shaders/$OPTION
fi
