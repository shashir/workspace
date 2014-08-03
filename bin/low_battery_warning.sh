#!/bin/bash
# https://bbs.archlinux.org/viewtopic.php?id=138755
BATTINFO=`acpi -b`
if [[ `echo $BATTINFO | grep Discharging` && `echo $BATTINFO | cut -f 5 -d " "` < 00:20:00 ]] ; then
    DISPLAY=:0.0 i3-nagbar -m "Low battery warning! $BATTINFO"
fi
