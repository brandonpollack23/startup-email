#!/bin/bash
PVEPROXY_PORTS=$(lsof | grep $(/bin/cat /etc/hostname) | grep pveproxy)
printf "System Has Just Booted Up, it should be accessable.\nHere is the ss info: \n$PVEPROXY_PORTS" | mail -s 'System Boot Notification!' $1 
