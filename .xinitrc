xrandr --output DP-1 --below HDMI-1

setxkbmap -layout us,us,ru -variant ndvorak,, -option ctrl:nocaps,altwin:swap_alt_win,compose:menu,grp:sclk_toggle
killall xcape 2>/dev/null ; xcape -e 'Control_L=Escape'

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
