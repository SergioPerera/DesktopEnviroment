#!/bin/bash

# Verifica si la interfaz tun0 existe y tiene una IP
IFACE=$(ip addr show tun0 2>/dev/null | grep "inet " | awk '{print $2}' | cut -d'/' -f1)

if [ -n "$IFACE" ]; then
  # VPN activa: mostrar íconos de conexión y la IP
  echo "%{F#1bbf3e}ON $IFACE%{u-}"
else
  # VPN inactiva: mostrar íconos apagados o de alerta
  echo "%{F#ff5555}VPN Off%{u-}"
fi
