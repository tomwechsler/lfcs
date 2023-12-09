#Working on ubuntu1

#Open the APT sources list for editing using the default editor
sudo apt edit-sources

#Open the APT sources list for editing using 'vim'
sudo vim /etc/apt/sources.list

#List the trusted keys that APT uses to authenticate packages
apt-key list

#Download the HashiCorp GPG key and add it to APT's trusted keys
wget -O- https://apt.releases.hashicorp.com/gpg | sudo apt-key add -

#Add the HashiCorp repository to the APT sources list
sudo add-apt-repository "deb https://apt.releases.hashicorp.com focal main"

#List the trusted keys again, now including the HashiCorp key
apt-key list

#Open the APT sources list for editing again, now including the HashiCorp repository
sudo apt edit-sources

#Update the package lists for upgrades and new package installations
sudo apt update