#feh --bg-scale --randomize ~/Pictures/Wallpapers/All/*
feh --bg-scale ~/Pictures/Wallpapers/Wallpaper.png
xmodmap ~/.Xmodmap
compton -b
xsetroot -cursor_name left_ptr
xsettingsd &
nvidia-settings --load-config-only
g910-led -a 0000FF
g910-led -gkm 1

exec dbus-launch bspwm
#exec dbus-launch dwm
