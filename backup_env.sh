#!/bin/bash

# Directorio destino
DEST="/home/odin/Downloads/DesktopEnviroment"

# Fecha actual para el commit
DATE=$(date '+%Y-%m-%d %H:%M:%S')

# Asegurarse de que el destino existe
mkdir -p "$DEST"

# Copiar archivos/directorios (sincrónicamente)
rsync -a --delete \
  /home/odin/.config/bspwm \
  /home/odin/.config/kitty \
  /home/odin/.config/nvim \
  /home/odin/.config/picom \
  /home/odin/.config/polybar \
  /home/odin/.config/sxhkd \
  /home/odin/powerlevel10k \
  /home/odin/.zshrc \
  "$DEST"

# Ir al repositorio
cd "$DEST" || exit 1

# Hacer commit y push
git add .
git commit -m "Backup: $DATE"
git push
