#Leave the rocky system

#Display the status of all Vagrant machines
vagrant status

#Destroy the 'rocky' Vagrant machine without asking for confirmation
vagrant destroy -f rocky

#Create and configure the 'rocky' Vagrant machine according to the Vagrantfile
vagrant up rocky

#SSH into the 'rocky' Vagrant machine
vagrant ssh rocky