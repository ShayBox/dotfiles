[[ ! -f /tmp/DISABLEX && -z $DISPLAY && $TTY = "/dev/tty1" ]] && exec startx
