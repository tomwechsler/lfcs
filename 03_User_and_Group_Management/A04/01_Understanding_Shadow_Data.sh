#Woking on ubuntu1

#Create a new user named 'user8' with home directory, login shell set to '/bin/bash'
sudo useradd -m user8 -s /bin/bash

#To set the password we use -p or --password (but it is not so easy)
sudo useradd --help

#Add a new user named 'user9' with home directory, login shell set to '/bin/bash', and password set to 'P@ssw0rd' using openssl for hashing
sudo useradd -m user9 -s /bin/bash -p $(openssl passwd -6 P@ssw0rd)

#Let's have a look at the fields
sudo tail -n2 /etc/shadow

#Display the date for '1 Jan 1970', which is the start of Unix time
date -d '1 Jan 1970'

#Display the date for '1 Jan 1970' plus 19265 days
date -d '1 Jan 1970 19265 days'

#Display the password aging information for the 'user8' user
sudo chage -l user8

#Display the manual page for the 'shadow' file format
man 5 shadow

#Display the contents of the shadow password database
sudo getent shadow

#Display the shadow password database entry for the 'user8' user
sudo getent shadow user8