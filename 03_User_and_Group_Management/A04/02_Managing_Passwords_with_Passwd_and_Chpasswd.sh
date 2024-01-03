#woking on ubuntu1

#Change the password for the 'user8' user
sudo passwd user8

#Display the shadow password database entry for the 'user8' user
sudo getent shadow user8

#Lock the password for the 'user8' user
sudo passwd -l user8

#Display the shadow password database entry for the 'user8' user
sudo getent shadow user8

#Unlock the password for the 'user8' user
sudo passwd -u user8

#Display the shadow password database entry for the 'user8' user
sudo getent shadow user8

#Notice we start with a space (this line will not show in the history)
 echo "user8:P@ssw0rd" | sudo chpasswd

#Nope no entry
history

sudo getent shadow user8

#Interactive mode to set the password
sudo chpasswd

user8:P@ssw0rd
user9:P@ssw0rd

CTRL+D

#Copy the users from above
vim users

#Use the 'chpasswd' command to set the passwords for the users in the 'users' file
sudo chpasswd < users