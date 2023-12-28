#Working on unbuntu1

#List the contents of the /etc/skel directory, which is used as a template for new user home directories
ls -la /etc/skel

#List the contents of the home directory for 'user3'
ls -la /home/user3

#Create a symbolic link to /usr/share/doc in the /etc/skel directory
sudo ln -s /usr/share/doc /etc/skel/doc

#List the contents of the /etc/skel directory again to confirm the changes
ls -la /etc/skel

#Create a new user named 'user5'
sudo useradd user5

#List the contents of the home directory for 'user5'
ls -la ~user5

#List the contents of the home directory for 'user3' again
ls -la ~user3