#!/bin/sh

(sleep 2 && /usr/local/libexec/gconfd-2) &
(sleep 2 && xscreensaver -no-splash) &
(sleep 2 && dunst -config ~/.config/dunst.rc) &

(sleep 2 && nitrogen --restore) &

(sleep 2 && xcompmgr) &

(sleep 2 && tint2 -c ~/.config/tint2/panel.rc) &
(sleep 2 && tint2 -c ~/.config/tint2/launcher.rc) &
(sleep 2 && yeahconsole-start) &
(sleep 2 && bbpager-start) &
#(sleep 2 && xxkb) &
(sleep 2 && qxkb) &
#(sleep 2 && gtmixer) &
(sleep 2 && dsbmixer -i) &

#(sleep 2 && cairo-calendar 5) &
(sleep 2 && conky-hw-monitor 5) &
(sleep 2 && conky-clock 5) &

# Dynamic applications menu
(sleep 2 && regen-app-menu) &
(sleep 2 && apps-monitor) &

