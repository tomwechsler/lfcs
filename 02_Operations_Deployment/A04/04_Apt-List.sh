#Working on unbuntu1


#List all available packages
apt list

#List all available packages that start with 'zz'
apt list zz*

#List the 'zzuf' package
apt list zzuf

#List all installed packages
apt list --installed

#Count the number of installed packages
apt list --installed | wc -l

#List all upgradable packages
apt list --upgradable

#Upgrade the 'ansible' package using 'sudo' privileges
sudo apt upgrade ansible

#Show detailed information about the 'ansible' package
apt show ansible