#!/usr/bin/env bash
export _JAVA_AWT_WM_NONREPARENTING=1

# Ejecuta Burp (ruta que corresponda). Usamos exec para reemplazar el proceso
# y & si quieres que sxhkd no se bloquee.
exec /usr/bin/burpsuite &
