#!/usr/bin/env python
import subprocess

import dbus
import dbus.service
import dbus.mainloop.glib
import gobject


class Controller(dbus.service.Object):
    @dbus.service.method('co.hexi.TabletSwivel',
                         in_signature='', out_signature='b')
    def RotateNormal(self):
        subprocess.call(['xrandr', '-o', 'normal', '-v'])
        subprocess.call(['xsetwacom', 'set', 'Serial Wacom Tablet stylus', 'rotate', 'none'])
        return True

    @dbus.service.method('co.hexi.TabletSwivel',
                         in_signature='', out_signature='b')
    def RotateRight(self):
        subprocess.call(['xrandr', '-o', 'right', '-v'])
        subprocess.call(['xsetwacom', 'set', 'Serial Wacom Tablet stylus', 'rotate', 'cw'])
        return True


if __name__ == '__main__':
    dbus.mainloop.glib.DBusGMainLoop(set_as_default=True)

    bus = dbus.SystemBus()
    name = dbus.service.BusName('co.hexi.TabletSwivel', bus)
    object = Controller(bus, '/co/hexi/TabletSwivel')

    mainloop = gobject.MainLoop()
    print 'Running service'
    mainloop.run()
