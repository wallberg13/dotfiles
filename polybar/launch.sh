#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch 
polybar wallbar &

resp=$(xrandr | grep -e "HDMI-0" | cut -d" " -f2)
if [ "$resp" == "connected" ]; then
	polybar wallbar2 &
fi

echo "Bars launched..."
