#Woking on ubuntu1

#Interrupt the boot process at the GRUB menu

init=/bin/bash

passwd

exec /sbin/init

#Another way to do it is to add the following to the kernel line in grub:
e
CTRL+E
systemd.unit=rescue.target