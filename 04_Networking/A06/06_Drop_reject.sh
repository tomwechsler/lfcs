#Working on ubuntu1

#Add a new rule
sudo iptables -I INPUT 5 -p icmp -j REJECT

#Destination Port Unreachable
ping 192.168.56.101 

#Delete the rule 5
sudo iptables -D INPUT 5

#Add a new rule
sudo iptables -I INPUT -p icmp -j REJECT --reject-with icmp-net-unreachable

#Destination Net Unreachable (after the second firewall change)
ping 192.168.56.101 