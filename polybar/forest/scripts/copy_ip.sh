#!/bin/bash

IP_FILE="$HOME/.config/polybar/ip_actual.txt"

if [ -f "$IP_FILE" ]; then
  cat "$IP_FILE" | xclip -selection clipboard
fi
