#Working on ubuntu1

#Update the list of available packages from the repositories
sudo apt update

#Install the 'tgt' package, which provides the iSCSI target daemon
sudo apt install -y tgt

#Display the status of the 'tgt' service
sudo systemctl status tgt