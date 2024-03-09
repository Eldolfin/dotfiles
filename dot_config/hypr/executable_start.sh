#!/bin/sh

# init wallpaper daemon
swww init &
# set wallpaper
files=(~/.backgrounds/*)
WALLPAPER=$(printf "%s\n" "${files[RANDOM % ${#files[@]}]}")
swww img $WALLPAPER &

waybar &

dunst &

chromium &
