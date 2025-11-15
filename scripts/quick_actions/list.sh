#!/bin/bash

function list() {
  echo "Shaders"
  echo "Mount Drive"
  echo "Unmount Drive"
}

OPTION=$(list | wofi -d -i --prompt "Gay Quick Actions")

case $OPTION in
  "Shaders") ~/dotfiles/scripts/quick_actions/shaders.sh;;
  "Mount Drive") ~/dotfiles/scripts/quick_actions/mount.sh;;
  "Unmount Drive") ~/dotfiles/scripts/quick_actions/unmount.sh;;
esac
