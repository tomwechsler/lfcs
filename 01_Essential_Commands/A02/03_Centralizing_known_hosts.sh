#Working on ubuntu1 (in the .ssh folder)

#Remove the config and known_hosts file
rm config
rm known_hosts

#Show with ssh key-keyscan what we get from the remote system
ssh-keyscan 192.168.56.102

#We can show a specfic key
ssh-keyscan -t ecdsa 192.168.56.102

#Now we store the key in a central store (-a to append)
ssh-keyscan -t ecdsa 192.168.56.102 | sudo tee -a /etc/ssh/ssh_known_hosts

#We do not have a known_hosts file
ls

#But we can start an ssh session without promted to accept the key
ssh 192.168.56.102

exit

#Still we do not have a known_hosts file
ls

#Because we have a central store
cat /etc/ssh/ssh_known_hosts