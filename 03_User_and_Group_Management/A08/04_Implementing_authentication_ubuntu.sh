#Working on ubuntu2

#Display the content of the /etc/passwd file
cat /etc/passwd

#Display the entries from the passwd database
getent passwd

#Display the entry for 'alice' from the passwd database
getent passwd alice

#Switch to the root user
sudo -i

#Update the list of available packages from the repositories
apt update

#Install the sssd-ldap and ldap-utils packages
apt install -y sssd-ldap ldap-utils

#Open the /etc/sssd/sssd.conf file in the vim text editor
vim /etc/sssd/sssd.conf

#Change the permissions of the /etc/sssd/sssd.conf file to be readable and writable only by the owner
chmod 600 /etc/sssd/sssd.conf

#Restart the sssd service
systemctl restart sssd

#Display the status of the sssd service
systemctl status sssd

#Display the entry for 'alice' from the passwd database again
getent passwd alice

#Append 'session optional pam_mkhomedir.so' to the end of the /etc/pam.d/common-session file
echo "session optional pam_mkhomedir.so" >> /etc/pam.d/common-session

#Display the content of the /etc/pam.d/su file
cat /etc/pam.d/su

#Exit the current shell
exit

#Switch to the 'alice' user
su - alice

#Display the username of the current user
whoami

#Exit the current shell
exit