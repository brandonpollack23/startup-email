# boot email

## Install on Debian
```shell
sudo mkdir -p /root/scripts/
sudo install -m 644 -o root -g root startup-email@.service /etc/systemd/system
sudo install -m 644 -o root -g root wakeup-email@.service /etc/systemd/system

sudo install -m 644 -o root -g root email-on-reboot.sh /root/scripts/
sudo install -m 644 -o root -g root email-on-wake.sh /root/scripts/

sudo systemctl daemon-reload
sudo systemctl enable --now startup-email@"<EMAILADDRESS>".service
sudo systemctl enable --now wakeup-email@"<EMAILADDRESS>".service
```

FIRST FIX SCRIPT BUT:
or just run the included install script if your installation doesn't differ from that, first arg is email
escaping was weird and im sick of trying to fix it

gotta quotes the email address cuz it has an @ in it.

The now will act as a test email.
