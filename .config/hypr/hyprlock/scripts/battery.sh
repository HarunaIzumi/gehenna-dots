#!/bin/bash

bat_percentage=$(cat /sys/class/power_supply/BAT1/capacity)
bat_status=$(cat /sys/class/power_supply/BAT1/status)

if [[ $bat_status == "Charging" ]]; then
  echo "$bat_percentage% (Charging)"
elif [[ $bat_status == "Discharging" ]]; then
  echo "$bat_percentage% (Discharging)"
else
  echo "$bat_percentage%"
fi
