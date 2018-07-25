#!/bin/bash
# Script para lockscreen
spectacle -f -b -n -o ~/Scripts/Screensave/lock.png
convert -blur 0x4 ~/Scripts/Screensave/lock.png ~/Scripts/Screensave/lock.png
i3lock -i ~/Scripts/Screensave/lock.png
