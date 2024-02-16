#Working on ubuntu1

#Display all mounted filesystems that include '/tmp' in their mount point
mount | grep /tmp

#List all active system timers
systemctl list-timers

#Open the '/etc/fstab' file in the vim text editor
sudo vim /etc/fstab

#It mounts a tmpfs filesystem at '/tmp' with specific options and permissions.
tmpfs /tmp tmpfs rw,nosiud,nodev,noexec,relatime,size=512M,mode=1777 0 0 #After tmpfs hit ESC and run :r!mount -t tmpfs

#Save and exit

#Mount all filesystems listed in /etc/fstab
sudo mount -a

#Display all tmpfs filesystems
mount -t tmpfs

#List the contents of the /tmp directory
ls /tmp

#Write 'hello' to a new file named 'hello.txt' in the /tmp directory
echo hello > /tmp/hello.txt

#List the contents of the /tmp directory again to confirm the changes
ls /tmp

#Unmount the /tmp filesystem
sudo umount /tmp

#List the contents of the /tmp directory again to confirm the changes
ls /tmp

#Remove all files in the /tmp directory
sudo rm -rf /tmp/*

#List the contents of the /tmp directory again to confirm the changes
ls /tmp

#Mount all filesystems listed in /etc/fstab again
sudo mount -a

#List the contents of the /tmp directory again to confirm the changes
ls /tmp

#Reboot the system
sudo reboot

#List the contents of the /tmp directory again after the reboot
ls /tmp

#Display all tmpfs filesystems again after the reboot
mount -t tmpfs