#woking on ubuntu1

#Add a new group named 'helpdesk'
sudo groupadd helpdesk

#Add the 'vagrant' user to the 'helpdesk' group
sudo gpasswd -a vagrant helpdesk

#Set the 'vagrant' user as the administrator of the 'helpdesk' group
sudo gpasswd -A vagrant helpdesk

#Add the 'ubuntu' user to the 'helpdesk' group
gpasswd -a ubuntu helpdesk