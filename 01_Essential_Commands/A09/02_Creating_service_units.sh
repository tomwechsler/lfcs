#Working on ubuntu1

#Allocate 10GB of space for a file in /root directory named disk1
sudo fallocate -l 10G /root/disk1

#List all block devices
lsblk

#Set up a loop device for a file and print its name
MYDISK=$(sudo losetup -f /root/disk1 --show)

#Create a new msdos disk label and a primary partition on the loop device, then print the partition table
sudo parted $MYDISK mklabel msdos mkpart primary 0% 100% print

#List all block devices again to confirm the changes
lsblk

#Display the content of disk1.service file
cat disk1.service

#Edit the disk1.service unit file with an editor
sudo systemctl edit --full --force disk1.service

#Enable disk1.service to start on boot
sudo systemctl enable disk1.service

#Reboot the system
sudo reboot

#List all block devices after reboot to confirm the service is running
lsblk

#Cat the disk1.service unit file
systemctl cat disk1.service