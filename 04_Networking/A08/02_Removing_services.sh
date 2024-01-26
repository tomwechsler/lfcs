#Working on the rocky system

#List all current firewall rules
firewall-cmd --list-all

#List all permanent firewall rules
firewall-cmd --list-all --permanent

#Remove the 'cockpit' service from the current firewall rules
firewall-cmd --remove-service=cockpit

#List all permanent firewall rules again to confirm the changes
firewall-cmd --list-all --permanent

#List all current firewall rules again to confirm the changes
firewall-cmd --list-all

#Remove the 'dhcpv6-client' service from the current firewall rules
firewall-cmd --remove-service=dhcpv6-client

#List all current firewall rules again to confirm the changes
firewall-cmd --list-all

#Make the current firewall rules permanent
firewall-cmd --runtime-to-permanent

#List all permanent firewall rules again to confirm the changes
firewall-cmd --list-all --permanent