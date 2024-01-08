#Working on rocky

#Install the openldap-clients, sssd, sssd-ldap, oddjob-mkhomedir, vim, and git packages
sudo dnf install -y openldap-clients sssd sssd-ldap oddjob-mkhomedir vim git

#List the available authselect profiles
authselect list

#Select the sssd authselect profile with the mkhomedir feature and force the changes
sudo authselect select sssd with-mkhomedir --force

#Enable and start the oddjobd service
sudo systemctl enable --now oddjobd.service

#Open the /etc/sssd/sssd.conf file in the vim text editor
sudo vim /etc/sssd/sssd.conf

#Change the permissions of the /etc/sssd/sssd.conf file to be readable and writable only by the owner
sudo chmod 600 /etc/sssd/sssd.conf

#Restart the sssd service
sudo systemctl restart sssd

#Display the entry for 'alice' from the passwd database
getent passwd alice

#Switch to the 'alice' user
su - alice

#Exit the current shell
exit