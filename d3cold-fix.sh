#!/bin/sh

D3COLD_CONTROL='/sys/devices/pci0000:00/0000:00:1c.0/0000:2c:00.0/d3cold_allowed'

case "$1" in
  pre)
    logger "D3Cold: disabling before suspend"
    echo 0 > "$D3COLD_CONTROL"
    ;;
  post)
    logger "D3Cold: enabling after resume"
    echo 1 > "$D3COLD_CONTROL"
    ;;
esac

