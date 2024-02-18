#Working on ubuntu1

#List all block devices
lsblk

#Create a new file named 'disk1' with a size of 1000MB
sudo fallocate -l 1000M disk1

#Associate the loop device that is first free with 'disk1' and display the name of the loop device
sudo losetup -f disk1 --show

#Create a new volume group named 'vg1' on the loop device '/dev/loop3'
sudo vgcreate vg1 /dev/loop3

#Create a new logical volume named 'lv1' with a size of 500MB in the 'vg1' volume group
sudo lvcreate -n lv1 -L 500M vg1

#List all block devices again to confirm the changes
lsblk