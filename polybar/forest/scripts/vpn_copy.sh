!/bin/bash
ip a | grep tun0 | grep inet | awk '{print $2}' | cut -d '/' -f1 | tr -d '\n' | xclip -selection clipboard
