#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch bar1 and bar2
# polybar bar 2>&1 | tee -a /tmp/polybar.log &
for m in $(polybar --list-monitors | cut -d":" -f1); do
	MONITOR=$m polybar bar 2>&1 | tee -a /tmp/polybar.log &
done
disown

echo "Bars launched..."
