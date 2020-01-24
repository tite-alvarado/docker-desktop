#!/bin/sh
DISPLAY="20"
rm -f /tmp/.X11-unix/X${DISPLAY} /tmp/.X${DISPLAY}-lock 
/usr/bin/Xvfb :${DISPLAY} -screen 0 1024x768x16 -cc 4 -nolisten tcp &
x11vnc -display :${DISPLAY} -forever -usepw -auth /usr/sbin/lightdm:/root/.Xauthority &
dbus-launch xfce4-session --display :${DISPLAY} &
while true ; do sleep 14400 ; done
