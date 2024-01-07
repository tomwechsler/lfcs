#Working on ubuntu

#Update the list of available packages from the repositories
sudo apt update

#Install the 389 Directory Server package
sudo apt install -y 389-ds

#Display all listening sockets along with their numeric ports
ss -ntl

#Clone the 'lfcs' repository from GitHub
git clone https://github.com/tomwechsler/lfcs.git

#Display the content of the 'example.conf' file in the 'lfcs/03_User_and_Group_Management/A08' directory
cat lfcs/03_User_and_Group_Management/A08/example.conf

#Switch to the root user
sudo -i

#Create a new 389 Directory Server instance from the 'example.conf' file
dscreate from-file /home/vagrant/lfcs/03_User_and_Group_Management/A08/example.conf

#Display all listening sockets along with their numeric ports again
ss -ntl