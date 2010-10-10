#!/bin/sh
#/etc/acpi/x200tsup.sh
echo 'Unrotating screen...'
if [ "`/usr/bin/xrandr -o normal -v | grep -i 'randr' | wc -l`" -ne "1" ]
then
echo '!! Something went wrong...'
export DISPLAY=":0.0"
export XAUTHORITY=/var/lib/gdm/\:0.Xauth
/bin/xset -display $DISPLAY dpms
echo 'Trying to unrotate again...'
/usr/bin/xrandr -o normal
fi
echo 'Rotating stylus...'
/usr/bin/xsetwacom set stylus rotate 0
#echo 'Killing keyboard...'
#killall onboard
