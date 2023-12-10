#Working on unbuntu1

#Switch to the root user
sudo -i

#List all block devices
lsblk

#Create a 1GB file named 'disk1' in the '/root' directory
fallocate -l 1G /root/disk1

#List the details of the 'disk1' file
ls -lh disk1

#Associate the loop device '/dev/loop10' with the 'disk1' file
losetup /dev/loop10 /root/disk1

#List all loop devices
losetup

#Create an MS-DOS partition table on '/dev/loop10' and a primary partition that spans the entire disk
parted /dev/loop10 mklabel msdos mkpart primary 0% 100%

#List all block devices again
lsblk

#After a reboot the block device is not available

#Connect to the 'ubuntu1' virtual machine using 'vagrant ssh'
vagrant ssh ubuntu1

#Switch to the root user
sudo -i

#List all block devices
lsblk

#List the files in the current directory
ls

#Edit the unit file for the 'losetup' service, creating a new file if it does not exist
systemctl edit losetup.service --full --force

#Reload the systemd manager configuration
systemctl daemon-reload

#List all block devices again
lsblk

#Enable and start the 'losetup' service immediately
systemctl enable --now losetup

#List all block devices again
lsblk

#Reboot the system
reboot

#Connect to the 'ubuntu1' virtual machine again using 'vagrant ssh'
vagrant ssh ubuntu1

#List all block devices again
lsblk


