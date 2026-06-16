#!/bin/sh

CONFIG_LOC="./waybar/config.jsonc"
STYLE_LOC="./waybar/style.css"

trap "killall waybar" EXIT

while true; do
  waybar & 
  inotifywait -e create,modify $CONFIG_LOC $STYLE_LOC
  killall waybar
done
