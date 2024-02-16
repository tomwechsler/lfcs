#Working on ubuntu1 in a root session

sudo -i

#We create some new files
fallocate -l 500M /root/disk2 
fallocate -l 500M /root/disk3

#What do we have
ls -lh disk*

#Create a variable with the new loop device infos
disk=$(losetup -f /root/disk2 --show) #-f = losetup will find an available loop device

echo $disk

#Create two partitions with the lvm flag
parted $disk mklabel msdos mkpart primary 0% 50% mkpart primary 50% 100% set 1 lvm on set 2 lvm on print

#Do we have lvm physical volumes => no setting the flag does not mean we have lvm physical volumes
pvs