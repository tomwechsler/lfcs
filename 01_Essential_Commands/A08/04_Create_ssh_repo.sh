#Working on ubuntu1

#Create a git user
sudo useradd -m -s /bin/bash git

#Set the password
echo 'git:[P@ssw0rd]' | sudo chpasswd

#Create a SSH key pair
ssh-keygen -N "" -f /home/vagrant/.ssh/id_rsa


