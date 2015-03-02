#!/bin/bash
# run SSH server
mkdir -p /var/run/sshd
sed -i 's/^AcceptEnv LANG LC_\*$//g' /etc/ssh/sshd_config
echo "X11UseLocalhost no" >> /etc/ssh/sshd_config
exec /usr/sbin/sshd -D
