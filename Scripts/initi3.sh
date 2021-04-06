#!/bin/bash

xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --output eDP-1-1 --mode 1920x1080 --primary --pos 0x1080 --auto

# Preferindo uma tela 1080.
# xrandr --output HDMI-0 --mode 2560x1080 --pos 0x0 --auto
xrandr --output HDMI-0 --mode 3840x2160 --right-of eDP-1-1 --auto --primary
# Terceiro Monitor
xrandr --output DVI-I-2-1 --mode 1280x1024 --pos 1920x1080 --auto

xrandr --auto

~/.Scripts/background.sh
~/.config/polybar/launch.sh
