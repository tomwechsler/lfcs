#Working on ubuntu1

#Switch to the root user
sudo -i

#Disable the Uncomplicated Firewall (UFW)
ufw disable

#Search for the 'firewalld' package in the package repositories
apt search firewalld

#Install the 'firewalld' package
apt install -y firewalld

#Display the status of the 'firewalld' service
systemctl status firewalld

#Enable and start the 'firewalld' service
systemctl enable --now firewalld

#Check the status of the firewall
firewall-cmd --state

#List all current firewall rules
firewall-cmd --list-all

#Remove the 'dhcpv6-client' service from the current firewall rules
firewall-cmd --remove-service=dhcpv6-client

#Add the 'http' service to the current firewall rules
firewall-cmd --add-service=http

#Make the current firewall rules permanent
firewall-cmd --runtime-to-permanent

#Remove the 'http' service from the current firewall rules
firewall-cmd --remove-service=http

#List all current firewall rules
firewall-cmd --list-all

#Reload the firewall
firewall-cmd --reload

#List all current firewall rules
firewall-cmd --list-all