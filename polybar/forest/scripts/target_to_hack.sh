#!/bin/sh
# polybar-target.sh
# Muestra SOLO la IP guardada con settarget (si existe). Si no existe, no imprime nada.
TARGET_DIR="${XDG_STATE_HOME:-$HOME/.local/state}"
TARGET_FILE="$TARGET_DIR/polybar_target_ip"

# asegurarse que el directorio existe (no hace nada si ya existe)
[ -d "$TARGET_DIR" ] || mkdir -p "$TARGET_DIR"

if [ -s "$TARGET_FILE" ]; then
  # imprimir la IP tal cual (sin colores ni iconos) para que polybar la muestre "solo"
  cat "$TARGET_FILE"
else
  # nada -> polybar mostrará vacío (si prefieres un mensaje, cámbialo aquí)
  exit 0
fi
