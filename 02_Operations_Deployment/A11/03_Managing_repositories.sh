#Working on rocky

#Display the configured software repositories for DNF (Dandified YUM)
dnf repolist

#Display all configured software repositories for DNF, including disabled ones
dnf repolist --all

#Change directory to the yum.repos.d directory, where repository configuration files are stored
cd /etc/yum.repos.d/

#List the contents of the current directory
ls

#Display the content of the 'rock-extras.repo' repository configuration file
cat rock-extras.repo

#Replace 'enabled=0' with 'enabled=1' in the 'rock-extras.repo' file to enable the repository
sudo sed -i 's/enabled=0/enabled=1/' /etc/yum.repos.d/rock-extras.repo

#Display the configured software repositories for DNF again to confirm the changes
dnf repolist

#List the contents of the Puppet 7 release RPM package without installing it
sudo rpm -qpl https://yum.puppet.com/puppet7-release-el-9.noarch.rpm

#Install the Puppet 7 release RPM package from the provided URL
sudo dnf install -y https://yum.puppet.com/puppet7-release-el-9.noarch.rpm

#Display the content of the 'puppet7-release.repo' repository configuration file
cat puppet7-release.repo

#Install the 'puppet-agent' package
sudo dnf install puppet-agent