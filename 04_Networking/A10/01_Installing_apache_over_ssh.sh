#Working on the rocky system (all systems are reset to their original state)

#Generate a new RSA key pair in the ~/.ssh directory with an empty passphrase
ssh-keygen -N "" -t rsa -f ~/.ssh/id_rsa -q

#Copy the public key to the remote host at 192.168.56.101
ssh-copy-id 192.168.56.101

#Copy the public key to the remote host at 192.168.56.102
ssh-copy-id 192.168.56.102

#Connect to the remote host at 192.168.56.101 and install the 'apache2' package
ssh 192.168.56.101 "sudo apt-get install -y apache2"

#Connect to the remote host at 192.168.56.102 and install the 'apache2' package
ssh 192.168.56.102 "sudo apt-get install -y apache2"

#Connect to the remote host at 192.168.56.101 and write 'ubuntu1' to the /var/www/html/index.html file
ssh 192.168.56.101 "echo ubuntu1 | sudo tee /var/www/html/index.html"

#Connect to the remote host at 192.168.56.102 and write 'ubuntu2' to the /var/www/html/index.html file
ssh 192.168.56.102 "echo ubuntu2 | sudo tee /var/www/html/index.html"

#Send a HTTP GET request to the remote host at 192.168.56.101 and display the response
curl 192.168.56.101

#Send a HTTP GET request to the remote host at 192.168.56.102 and display the response
curl 192.168.56.102

#Install the 'httpd' package
sudo dnf install -y httpd

#Enable and start the 'httpd' service
sudo systemctl enable --now httpd

#Display the loaded Apache modules
httpd -M