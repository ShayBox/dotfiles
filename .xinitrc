xrandr --auto
xrandr --output HDMI-0 --right-of DP-0
xrandr --output DP-0 --mode 1920x1080 --rate 144.00

feh --bg-scale --randomize ~/Pictures/Wallpapers/All/*
xmodmap ~/.Xmodmap
xsettingsd &
#compton -b
xsetroot -cursor_name left_ptr
nvidia-settings --load-config-only
g910-led -a 0000FF
g910-led -gkm 1

exec dbus-launch bspwm
