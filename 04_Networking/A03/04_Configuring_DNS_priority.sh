#Working on the rocky system

#Display /etc/resolv.conf
cat /etc/resolv.conf

#Display the config file
sudo cat /etc/NetworkManager/system-connections/athome.nmconnection

#List the connection
nmcli connection

#Add DNS Server
sudo nmcli connection modify athome ipv4.dns 8.8.8.8

#Bring up the connection
sudo nmcli connection up athome

#Display /etc/resolv.conf
cat /etc/resolv.conf

#Display the config file
sudo cat /etc/NetworkManager/system-connections/athome.nmconnection

#Add DNS Priority (A lower value has a higher priority)
sudo nmcli connection modify athome ipv4.dns-priority 10

#Bring up the connection
sudo nmcli connection up athome

#Display the config file
sudo cat /etc/NetworkManager/system-connections/athome.nmconnection

#Display /etc/resolv.conf
cat /etc/resolv.conf

#Edit DNS Priority (Negative values have the special effect of excluding other configurations with a greater value)
sudo nmcli connection modify athome ipv4.dns-priority -1

#Bring up the connection
sudo nmcli connection up athome

#Display /etc/resolv.conf
cat /etc/resolv.conf