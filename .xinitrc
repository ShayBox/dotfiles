# Wallpaper
feh --bg-scale --randomize ~/Pictures/Wallpapers/Misc/*

# Remap Caps to F13
xmodmap ~/.Xmodmap

# Compositor
compton -b

# Fix pointer on root
xsetroot -cursor_name left_ptr

# Load nvidia settings
#nvidia-settings --load-config-only

# Set keyboard color & disable G keys
g910-led -a 0000FF
g910-led -gkm 1

# Load WM
exec dbus-launch bspwm
#exec dbus-launch dwm
