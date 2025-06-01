#!/bin/bash

IP_FILE="$HOME/.config/polybar/ip_actual.txt"

# Si el archivo no existe, muestra placeholder
if [ ! -f "$IP_FILE" ]; then
  echo "No IP"
else
  echo " $(cat "$IP_FILE")"
fi
