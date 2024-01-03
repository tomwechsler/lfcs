#workong on ubuntu1

#Display the contents of the '/etc/group' file, which contains information about groups
cat /etc/group

#Display the entry for the 'sudo' group
getent group sudo

#Display help information for the 'groupadd' command
sudo groupadd --help

#Add a new group named 'sales'
sudo groupadd sales

#Display the entry for the 'sales' group
getent group sales

#Add a new user named 'user7'
sudo useradd user7

#Display the user ID, group ID, and groups for the 'user7' user
id user7

#Rename the 'sales' group to 'grp-sales'
sudo groupmod -n grp-sales sales

#Delete the 'grp-sales' group
sudo groupdel grp-sales