#!/bin/sh
#/etc/acpi/x200tsdown.sh
echo 'Rotating screen and stylus...'
dbus-send --system --type=method_call --dest=co.hexi.TabletSwivel /co/hexi/TabletSwivel co.hexi.TabletSwivel.RotateRight
#echo 'Starting keyboard...'
#/usr/bin/onboard&
