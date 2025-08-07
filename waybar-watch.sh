#!/bin/bash

CONFIG_LOC="/home/spyman/.config/waybar/config.jsonc"
STYLE_LOC="/home/spyman/.config/waybar/style.css"

echo "waybar-watch.sh: watching $CONFIG_LOC, $STYLE_LOC ..."

trap "killall waybar" EXIT

while true; do
  waybar & 
  echo "waybar-watch.sh: waybar reloaded"
  inotifywait -e create,modify $CONFIG_LOC $STYLE_LOC
  killall waybar
done
