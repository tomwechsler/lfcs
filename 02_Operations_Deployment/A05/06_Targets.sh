#Working on unbuntu1

#Display the current runlevel
runlevel

#Display the default target (similar to runlevel) that systemd uses
systemctl get-default

#List all systemd units of type 'target'
systemctl list-units --type target

#Change the current target to 'multi-user.target', which corresponds to runlevel 3
sudo systemctl isolate multi-user

#Display the current runlevel again
runlevel

#Set the default target to 'multi-user.target'
sudo systemctl set-default multi-user

#Display the default target again
systemctl get-default

#Connect to the machine with IP address 192.168.56.102 using SSH
ssh vagrant@192.168.56.102

#Display the current runlevel on the remote machine
runlevel

#Set the default target on the remote machine to 'multi-user.target'
sudo systemctl set-default multi-user

#Display the default target on the remote machine
systemctl get-default

#Reboot the remote machine
reboot

#Let's have a look in Virtualbox