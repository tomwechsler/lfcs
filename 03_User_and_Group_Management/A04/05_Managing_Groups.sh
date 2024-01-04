#woking on ubuntu1

#Display the groups the current user is a member of
groups

#Display the user ID, group ID, and groups the current user is a member of
id

#Display the group IDs the current user is a member of
id -G

#Display the group names the current user is a member of
id -Gn

#Display the user ID, group ID, and groups the 'vagrant' user is a member of
id vagrant

#Run a new shell with the group ID set to 'mkt'
sg mkt

#Manage the 'mkt' group
sudo gpasswd mkt

#Display lines containing 'mkt' from the '/etc/gshadow' file, which contains secure group account information
sudo grep mkt /etc/gshadow

#Run a new shell with the group ID set to 'mkt'
sg mkt

#Display the user ID, group ID, and groups the current user is a member of
id

#Display the groups the current user is a member of
groups

#Add the 'vagrant' user to the 'mkt' group
sudo gpasswd -a vagrant mkt

#Set the 'vagrant' user as the administrator of the 'mkt' group
sudo gpasswd -A vagrant mkt

#Display lines containing 'mkt' from the '/etc/gshadow' file
sudo grep mkt /etc/gshadow

#Exit the current shell
exit

#Exit the current shell
exit

#Log into the 'ubuntu1' virtual machine as the 'vagrant' user
vagrant ssh ubuntu1

#Display the user ID, group ID, and groups the current user is a member of
id

#Add the 'ubuntu' user to the 'mkt' group
gpasswd -a ubuntu mkt

#Display lines containing 'mkt' from the '/etc/gshadow' file
sudo grep mkt /etc/gshadow