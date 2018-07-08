#!/bin/bash
#!/usr/bin/env sh

# Set wallpaper and colors in Xresources
wal -i ~/Pictures/.wallpapers/

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

for i in $(polybar -m | awk -F: '{print $1}'); do MONITOR=$i polybar bar -c ~/.config/polybar/config & done
