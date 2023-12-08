#Working on ubuntu1

#Update the package lists for upgrades and new package installations
apt update

#Run the previous command with 'sudo' privileges
sudo !!

#Update the package lists for upgrades and new package installations using 'apt-get'
sudo apt-get update

#Connect to the server at '192.168.56.102' as the 'tom' user and run 'sudo apt update' on the server
ssh tom@192.168.56.102 "sudo apt update"

#Connect to the server at '192.168.56.102' as the 'tom' user and run 'sudo apt-get update' on the server
ssh tom@192.168.56.102 "sudo apt-get update"