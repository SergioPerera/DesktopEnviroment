#!/bin/bash

# Ruta del archivo donde se guarda la IP
IP_FILE="$HOME/.config/polybar/ip_actual.txt"

# Si se pasa la opción -r, borrar la IP guardada
if [[ "$1" == "-r" ]]; then
  if [[ -f "$IP_FILE" ]]; then
    rm "$IP_FILE"
    echo "IP eliminada."
  else
    echo "No hay IP guardada para eliminar."
  fi
  exit 0
fi

# Si no se pasa parámetro, mostrar ayuda
if [ -z "$1" ]; then
  echo "Uso:"
  echo "  $0 <IP>     → Establece la IP a mostrar"
  echo "  $0 -r       → Elimina la IP actual"
  exit 1
fi

# Guarda la IP en el archivo
echo "$1" >"$IP_FILE"
echo "IP guardada: $1"
echo "$1" >"$IP_FILE"
