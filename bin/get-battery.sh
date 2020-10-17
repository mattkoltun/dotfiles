#!/usr/bin/sh

batt=upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage | sed -e 's/\s*//g' | cut -f2 -d:
echo $batt
