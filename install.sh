#!/bin/bash
#BSPWM
apt install bspwm

rm rf ~/.config/bspwm/
cp -r ./bspwm/ ~/.config

apt intall sxhkd

rm rf ~/.config/sxhkd/
cp -r ./sxhkd/ ~/.config
