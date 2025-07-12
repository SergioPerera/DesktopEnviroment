#!/bin/bash
export PATH="/usr/bin:/bin:/usr/local/bin"

DEST="/home/odin/Downloads/DesktopEnviroment"
DATE=$(date '+%Y-%m-%d %H:%M:%S')

mkdir -p "$DEST"

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

git -C "$DEST" add .
git -C "$DEST" commit -m "Backup: $DATE"
git -C "$DEST" push >>/home/odin/cron_git.log 2>&1
