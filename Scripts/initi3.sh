#!/bin/bash

xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --output eDP-1-1 --mode 1920x1080 --primary --auto

resp=$(xrandr | grep -e "HDMI-0" | cut -d" " -f2)

if [ "$resp" == "connected" ]; then
	
	# Preferindo uma tela 1080.
	resp=$(xrandr | grep -e "HDMI-0" -A3 | grep -e "   ")
	if [ $(echo $resp | grep "1920x1080" | wc -l) -gt 0 ]; then
		xrandr --output HDMI-0 --mode 1920x1080 --left-of eDP-1-1 --auto
	fi

fi


xrandr --auto
