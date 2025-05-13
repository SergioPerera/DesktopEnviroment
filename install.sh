#!/bin/bash
#BSPWM
apt install bspwm

rm rf ~/.config/bspwm/
mv ./bspwm/ ~/.config

apt intall sxhkd

rm rf ~/.config/sxhkd/
mv ./sxhkd/ ~/.config
