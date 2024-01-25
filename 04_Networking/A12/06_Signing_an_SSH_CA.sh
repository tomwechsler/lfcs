#Working on ubuntu in a root session

sudo su -

#We need to publish our pub key to the remote systems
scp vagrant@192.168.56.101:/etc/ssh/ssh_host_rsa_key.pub alma.pub

#Now we have the alma.pub key locally
ls

#We are going to sign the key (-s its a signing request, -I the identity,-h its host key, -n the name, -V the validity)
ssh-keygen -s server_ca -I alma -h -n 192.168.56.101 -V +52w alma.pub

#We have now the alma-cert.pub key
ls

#We copy the pub key
scp alma-cert.pub vagrant@192.168.56.101:/tmp/ssh_host_rsa_key-cert.pub

#SSH to alma
ssh vagrant@192.168.56.101

#Start a root session
sudo su -

#Move the key
mv /tmp/ssh_host_rsa_keys-cert.pub /etc/ssh

#Add the config file
echo 'HostCertificate /etc/ssh/ssh_host_rsa_key-cert.pub' >> /etc/ssh/sshd_config

#Restart the service
systemctl restart sshd

#We disable SSH root login and set PasswordAuthentication to no
vim /etc/ssh/sshd_config

PasswordAuthentication no
PermitRootLogin no

#Save and exit

#Restart the service
systemctl restart sshd

#Exit the root and ssh session
exit
exit

#Lets edit the central known_hosts file
vim /etc/ssh/ssh_known_hosts

#We remove the alma entry (ideally, we shoud add the signed cert also ubuntu and opensuse)

#Save and exit

#Exit the root session
exit

#Test the SSH options
ssh -o PreferredAuthentications=none 192.168.56.102

#Start a ssh session
ssh -v 192.168.56.102

#In the output scroll up to see: Server host certificate
