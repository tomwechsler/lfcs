#Working on ubuntu1

#List content of sudoers file
cat /etc/sudoers

#We need root privileges
sudo !!

#List content of the sudoers.d directory
sudo ls /etc/sudoers.d/

#Cat the vagrant file
sudo cat /etc/sudoers.d/vagrant

#List sudo entries
sudo -l

#List groups
id

#Add Vagrant to admin group (has nothing to do with sudo, serves as a precaution in case of an emergency)
sudo usermod -aG admin vagrant

#In order for the group membership to take effect, we have to log out
exit

vagrant ssh ubuntu1

#List groups
id

#We should not edit this file
sudo visudo

#ATTENTION to the syntax
sudo visudo -f /etc/sudoers.d/bob

bob ALL=(root) NOPASSWD: /usr/bin/passwd, !/usr/bin/passwd root

#Lets make a mistake
sudo visudo -f /etc/sudoers.d/bob

#Never use the third option

#Switch to bob
sudo su - bob

#List the sudo options
sudo -l

#This will not work
sudo cat /etc/shadow

#This will work
sudo passwd ubuntu

#This will not work
sudo passwd root