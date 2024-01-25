#Working on ubuntu

#Check the remote system
ssh -o PreferredAuthentications=none 192.168.56.101

#Check the remote system
ssh -o PreferredAuthentications=none 192.168.56.103

#Check itself
ssh -o PreferredAuthentications=none 192.168.56.102

#Create a password for the vagrant account
sudo passwd vagrant

#Switch to opensuse

#Create a password for the vagrant account
sudo passwd vagrant

#Switch to alma

#Create a password for the vagrant account
sudo passwd vagrant



Password based authentication may be enabled on some systems and on others not.
This is just the build of the vagrant boxes. Vagrant, itself, uses key based
authentication. But it shows how easily authentication weaknesses can be displayed.
