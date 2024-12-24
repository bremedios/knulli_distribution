#!/bin/sh

mount -o remount,rw /boot

echo "1" > /boot/restart.flag # So the system knows if it's restart or cold boot for the charging binary in rcS
sync

mount -o remount,ro /boot

reboot
