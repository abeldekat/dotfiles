#!/bin/sh
echo "hostname"
echo 'chris-laptop' > /etc/hostname
cat /etc/hostname

echo "hosts"
echo '127.0.0.1		localhost' >> /etc/hosts
echo '::1		localhost' >> /etc/hosts
echo '127.0.1.1		chris-laptop.localdomain chris-laptop' >> /etc/hosts
cat /etc/hosts
