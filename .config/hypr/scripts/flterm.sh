#!/bin/bash

declare clients=
declare regex='.[] | select(.class == "flterm")'

clients=$(hyprctl clients -j)

if ! echo "$clients" | jq -e "$regex" >/dev/null; then
  kitty --class flterm &
fi
