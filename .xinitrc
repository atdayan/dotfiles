xrandr --output DP-1 --auto --output HDMI-1 --auto --right-of DP-1
xset r rate 300 50
xrdb ~/.Xresources
wal -R

#statusbar loop
while true; do
    xsetroot -name "$(date +"%a, %d/%m/%y %R")"
    sleep 1m
done &

while true; do
    dwm 2> ~/.cache/dwm/.dwm.log
done
