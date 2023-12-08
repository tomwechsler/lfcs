#working on ubuntu1

Boot server install ISO
Spacebar to see menu
F6 Other options

#Replace the 3 --- with rw init=/bin/bash

#Mount the first partition of the first hard drive (/dev/sda1) at the /mnt directory
mount /dev/sda1 /mnt

#Mount the /dev directory to /mnt/dev, making the device files in /dev available in /mnt/dev
mount --rbind /dev /mnt/dev

#Mount the /proc directory to /mnt/proc, making the process information pseudo-filesystem available in /mnt/proc
mount --rbind /proc /mnt/proc

#Mount the /sys directory to /mnt/sys, making the system information pseudo-filesystem available in /mnt/sys
mount --rbind /sys /mnt/sys

#Use 'chroot' to change the root directory to /mnt and run 'bash', effectively isolating the /mnt environment from the rest of the system
chroot /mnt bash

#Install GRUB (the bootloader) to the master boot record of the first hard drive (/dev/sda)
grub-install /dev/sda

#Exit the current shell (the 'bash' shell started by 'chroot')
exit

#Poweroff the virtual machine
#Remove the .iso File and start the VM