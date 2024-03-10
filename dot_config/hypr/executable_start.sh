#!/bin/sh

set -xe

# init wallpaper daemon
swww init &

waybar &
# ags -c ~/.config/ags/config.js &

dunst &

# set wallpaper
files=(~/.backgrounds/*)
WALLPAPER=$(printf "%s\n" "${files[RANDOM % ${#files[@]}]}")
swww img $WALLPAPER &

copyq --start-server &

chromium &
