#!/bin/sh

IFACE=$(/usr/sbin/ifconfig | grep tun0 | awk '{print $1}' | tr -d ':')

if [ "$IFACE" = "tun0" ]; then
  echo "%{F#1bbf3e}%{u-} $(/usr/sbin/ifconfig tun0 | grep "inet " | awk '{print $2}')%{u-}"
else
  echo "%{F#ff5555}%{u-} Disconnected"
fi
