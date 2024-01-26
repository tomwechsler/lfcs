#Working on the rocky system

#Display the system's hostname, operating system, and other details
hostnamectl

#Switch to the root user
sudo -i

#Check the status of the firewall
firewall-cmd --state

#Enable and start the firewalld service
systemctl enable --now firewalld

#Check the status of the firewall again
firewall-cmd --state

#List all firewall rules
firewall-cmd --list-all