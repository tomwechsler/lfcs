#Working on ubuntu1

#Check the remote system
ssh -o PreferredAuthentications=none 192.168.56.102

#Check itself
ssh -o PreferredAuthentications=none 192.168.56.101

#Create a password for the vagrant account
sudo passwd vagrant

#Switch to ubuntu2

#Create a password for the vagrant account
sudo passwd vagrant



Password based authentication may be enabled on some systems and on others not.
This is just the build of the vagrant boxes. Vagrant, itself, uses key based
authentication. But it shows how easily authentication weaknesses can be displayed.
