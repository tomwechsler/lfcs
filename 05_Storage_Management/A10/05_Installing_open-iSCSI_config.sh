#Working on ubuntu2

#Update the list of available packages from the repositories
sudo apt update

#Install the 'open-iscsi' package, which provides the iSCSI initiator daemon
sudo apt install -y open-iscsi

#List all block devices
lsblk

#Open the '/etc/iscsi/iscsid.conf' file in the vim text editor
sudo vim /etc/iscsi/iscsid.conf

#Remove the '#' from node.session.auth.authmethod, node.session.auth.username and node.session.auth.password
#Set username and password (fred and secret)

#Restart the 'iscsid' and 'open-iscsi' services
sudo systemctl restart iscsid open-iscsi

#List all block devices
lsblk

#Discover iSCSI targets at the IP address 192.168.56.101
sudo iscsiadm -m discovery -t sendtargets -p 192.168.56.101

#Log in to all discovered iSCSI targets
sudo iscsiadm -m node --login

#List all block devices again to confirm the changes
lsblk

#Log out from all iSCSI targets
sudo iscsiadm -m node --logout

#List all block devices again to confirm the changes
lsblk