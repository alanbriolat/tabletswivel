#!/bin/sh
#/etc/acpi/x200tsdown.sh
echo 'Rotating screen...'
if [ "`/usr/bin/xrandr -o right -v | grep -i 'randr' | wc -l`" -ne "1" ]
then
echo '!! Something went wrong...'
export DISPLAY=":0.0"
export XAUTHORITY=/var/lib/gdm/\:0.Xauth
/bin/xset -display $DISPLAY dpms
echo 'Trying to rotate again...'
/usr/bin/xrandr -o right
fi
echo 'Rotating stylus...'
/usr/bin/xsetwacom set stylus rotate cw
#echo 'Starting keyboard...'
#/usr/bin/onboard&
