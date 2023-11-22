#Let's check the size
sudo du -sh /etc

#We create a tar file
sudo tar -cf etc.tar /etc 

#What about the size
ls -lh etc.tar 

#-t for list
tar -tf etc.tar

#-x for extract
tar -xf etc.tar

#Change the current directory to 'etc'
cd etc

#Print the current working directory
pwd

#Remove the 'hosts' file in the '/etc' directory
sudo rm /etc/hosts

#Display the contents of the '/etc/hosts' file
cat /etc/hosts

#Change the current directory to the root directory '/'
cd /

#Extract the 'etc/hosts' file from the 'etc.tar' archive in the home directory of the 'vagrant' user
sudo tar -xf ~vagrant/etc.tar etc/hosts

#The last command started with '!ca'
!ca


