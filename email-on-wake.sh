#!/bin/bash
printf "System Has Just Woken Up From It's Slumber, It Should Be Accessable" | mail -s 'System Suspend Wake Notification!' $1 
