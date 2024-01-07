#Working on the rocky system

#Display file system disk space usage in human-readable format and include file system type
df -hT /

#Search for 'acl' in the boot configuration file for the current kernel version
grep -i acl /boot/config-$(uname -r)

#On the ubuntu system
grep -i acl /boot/config-$(uname -r)

#List the acl package
apt list acl

#Install the acl package
sudo apt install acl

#List the acl package
apt list acl [installed]

#List the 'acl' package using dnf package manager with root privileges
sudo dnf list acl

#Query the RPM package that provides the '/usr/bin/getfacl' file
rpm -qf /bin/getfacl

#On ubuntu
dpkg -S /bin/getfacl

#Check the mount options for the root file system
mount -t ext4

#Use tune2fs
sudo tune2fs -l /dev/sda1 | grep -i acl

#On rocky
mount -t ext4

mount -t xfs #There is no acl mount option needed, xfs supports acl by default


The control of permissions for access to directories and files originally works as follows:
A resource (file or directory) can only have an owner in the sense of a user and an owner group. 
Based on these two assignments, authorizations can be assigned that only relate to reading, writing and executing. 
A further assignment of rights can of course be applied to others, i.e. all others. Because all of this is the case, 
it makes no sense under Linux to be a member of several security groups at the same time

ACLs are access control lists that can contain several users and security groups in order to grant each of these 
users and groups a set of authorizations for the respective resource.