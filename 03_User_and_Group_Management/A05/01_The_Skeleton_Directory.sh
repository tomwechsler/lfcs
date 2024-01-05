#Woking on ubuntu1

#Add a new user named 'test_user' with a home directory
sudo useradd -m test_user

#List all files (including hidden ones) in the home directory of 'test_user'
ls -A ~test_user

#List all files (including hidden ones) in the '/etc/skel' directory, which is used as a template for new user home directories
ls -A /etc/skel

#Change the current directory to '/etc/skel'
cd /etc/skel

#Create a new file wirh some text
vim README

#Back to home
cd

#List the file from the skeleton directory
ls -A /etc/skel

#Nothing happend to the existing user home
ls -a ~test_user

#Create a new user named 'test_user2' with a home directory
sudo useradd -m test_user2

#List all files (including hidden ones) in the home directory of 'test_user2'
ls -A ~test_user2