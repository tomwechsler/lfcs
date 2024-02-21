#Working on ubuntu2

#Create an export
sudo vim /etc/exports

#/home 192.168.56.0/24(rw,root_squash,no_subtree_check,sync)

#rw allows read and write access.
#root_squash converts root accesses into accesses of a non-privileged user.
#no_subtree_check improves performance by skipping certain checks.
#sync ensures immediate saving of changes, which is safer but can be slower.


#Save and exit

#Read in the changes
sudo exportfs -r

sudo exportfs

#SWITCH TO ROCKY

#Install the nfs client (Rocky Linux)
sudo dnf install -y nfs-utils

#SWITCH TO UBUNTU1

#Install the nfs client (Ubuntu)
sudo apt install -y nfs-common

#Mount the export
sudo mount 192.168.56.102:/home /mnt

#Switch
cd /mnt/vagrant

#Create a file
touch remotefile

#BACK TO UBUNTU2
ls -l remotefile