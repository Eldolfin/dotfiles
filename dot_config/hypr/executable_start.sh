#!/bin/sh

set -xe

# init wallpaper daemon
swww init || true

# set wallpaper
files=(~/.backgrounds/*)
WALLPAPER=$(printf "%s\n" "${files[RANDOM % ${#files[@]}]}")
swww img $WALLPAPER

waybar &
# ags -c ~/.config/ags/config.js &

dunst &

copyq --start-server &

chromium &
