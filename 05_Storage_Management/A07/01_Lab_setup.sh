#Working on physical host

#Create a new project
mkdir luks
cd luks

#Create the new Vagrantfile
vim Vagrantfile

#Copy the content from the example

#Save and exit

#Update the box
vagrant box update

#Create a new VM
VAGRANT_EXPERIMENTAL=disks vagrant up

#Do we have the disks
vagrant ssh -c lsblk

#SSH into the VM
vagrant ssh