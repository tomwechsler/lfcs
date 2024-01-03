#Working on ubuntu1

#List the vagrant user's information
getent passwd vagrant

#we use the 'chfn' command to change the finger information for the vagrant user
chfn

#Runs the last command beginning with 'g'
!g

#No permission
chfn -f "vagrant user"

#Run the last command again with sudo privileges, and append 'vagrant' to the command
sudo !! vagrant

#Run the most recent command that starts with 'g'
!g

#Display the type of the file that the 'adduser' command points to
file $(which adduser)

#Add a new user named 'user6' with sudo privileges
sudo adduser user6

#Install the 'finger' package with sudo privileges, and automatically answer 'yes' to all prompts
sudo apt install -y finger

#Display information about the 'vagrant' user
finger vagrant

#Display information about the 'user6' user
finger user6