# boot email

## Install on Debian
```shell
sudo mkdir -p /root/scripts/
sudo install -m 644 -o root -g root startup-email@.service /etc/systemd/system
sudo install -m 644 -o root -g root email-on-reboot.sh /root/scripts/

sudo systemctl daemon-reload
sudo systemctl enable --now startup-email@"<EMAILADDRESS>".timer
```

gotta quotes the email address cuz it has an @ in it.

The now will act as a test email.
