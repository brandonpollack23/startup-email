#!/bin/bash
if [[ -z $1 ]]; then
    echo "pass in the email as an arg"
    exit 1
fi

EMAIL=$1

sudo mkdir -p /root/scripts/
sudo install -m 644 -o root -g root startup-email@.service /etc/systemd/system
sudo install -m 644 -o root -g root wakeup-email@.service /etc/systemd/system

sudo install -m 644 -o root -g root email-on-reboot.sh /root/scripts/
sudo install -m 644 -o root -g root email-on-wake.sh /root/scripts/

sudo systemctl daemon-reload
# sudo systemctl enable --now $(systemd-escape -u startup-email@'"'$1'"'.service)
# sudo systemctl enable --now wakeup-email@'"'"$1"'"'.service
