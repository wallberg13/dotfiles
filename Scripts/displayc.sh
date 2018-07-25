#!/bin/bash
# Script para deixar as telas do monitor aqui de casa no qual o note fica no
# lado direito e o monitor no lado esquerdo.
xrandr --output HDMI-0 --mode 1600x900 --left-of eDP-1-1 --auto
xrandr --output eDP-1-1 --mode 1920x1080 --primary --auto

feh --bg-fill ~/Pictures/g6o75dfsh2911.jpg
