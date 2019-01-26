if [[ ! $DISPLAY && $XDG_VTNR -eq 1 && ! -e /tmp/DISABLE_STARTX ]]; then
  exec startx
fi
