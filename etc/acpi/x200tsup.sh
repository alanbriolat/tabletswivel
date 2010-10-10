#!/bin/sh
#/etc/acpi/x200tsup.sh
echo 'Unrotating screen and stylus...'
dbus-send --system --type=method_call --dest=co.hexi.TabletSwivel /co/hexi/TabletSwivel co.hexi.TabletSwivel.RotateNormal
#echo 'Killing keyboard...'
#killall onboard
