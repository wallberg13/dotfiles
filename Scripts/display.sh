#!/bin/bash
# Script para deixar as telas do monitor aqui de casa no qual o note fica no
# lado direito e o monitor no lado esquerdo.
xrandr --output eDP-1-1 --auto --output HDMI-0 --auto --right-of eDP-1-1
