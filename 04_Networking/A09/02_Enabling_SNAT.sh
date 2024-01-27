#Working on ubuntu1

#Switch to the root user
sudo -i

#List all current firewall rules
firewall-cmd --list-all

#List all permanent firewall rules
firewall-cmd --list-all --permanent

#Make the current firewall rules permanent
firewall-cmd --runtime-to-permanent

#List all permanent firewall rules again to confirm the changes
firewall-cmd --list-all --permanent

#Display the current value of the 'ip_forward' kernel parameter
cat /proc/sys/net/ipv4/ip_forward

#Display all kernel parameters that match the pattern 'ip_forward'
sysctl -ar ip_forward

#Open the '/etc/sysctl.d/99-sysctl.conf' file in the vim text editor
#Uncomment the line 'net.ipv4.ip_forward=1'
vim /etc/sysctl.d/99-sysctl.conf 

#Apply all system-wide kernel parameter changes
sysctl -p --system

#Display all kernel parameters that match the pattern 'ip_forward' again to confirm the changes
sysctl -ar ip_forward

#Switch to the rocky

#Display the system's IP routing table
ip route

#Delete the default route from the system's IP routing table
ip route del default

#Send an ICMP echo request to the IP address 1.1 (this is likely to fail as the default route has been removed)
ping 1.1

#Add a new default route to the system's IP routing table via the IP address 192.168.56.101
ip route add default via 192.168.56.101

#Display the system's IP routing table again to confirm the changes
ip route

#Send 3 ICMP echo requests to the IP address 1.1 (this should now succeed as the default route has been added)
ping -c3 1.1