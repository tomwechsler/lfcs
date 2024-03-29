#Working on ubuntu1 in a root session

#RAID 1 consists of an exact copy (or mirror) of a set of data on two or more disks
#RAID 5 consists of block-level striping with distributed parity (minimum of three disks needed)
#RAID 6 extends RAID 5 by adding another parity block; thus, it uses block-level striping with two parity 
#blocks distributed across all member disks (minimum of four disks needed)

sudo -i

#List the block device
lsblk

#Create two new files
fallocate -l 500M /root/mirror1 
fallocate -l 500M /root/mirror2 

#Link the files
diska=$(losetup -f /root/mirror1 --show)
echo $diska

diskb=$(losetup -f /root/mirror2 --show)
echo $diskb

#Create the partitions
parted $diska mklabel msdos mkpart primary 0% 100% set 1 raid on print

parted $diskb mklabel msdos mkpart primary 0% 100% set 1 raid on print

#Do we have any raid
cat /proc/mdstat