#Working on the rocky system

#Clone the 'lfcs' repository from GitHub
git clone https://github.com/tomwechsler/lfcs.git

#Display the content of the 'load.conf' file in the 'lfcs/04_Networking' directory
cat lfcs/04_Networking/load.conf

#Copy the 'load.conf' file to the '/etc/httpd/conf.d/' directory
sudo cp lfcs/04_Networking/load.conf /etc/httpd/conf.d/

#Check the syntax of the Apache configuration files
sudo httpd -t

#Restart the 'httpd' service to apply the changes
sudo systemctl restart httpd

#Set the 'httpd_can_network_connect' SELinux boolean to true and make the change persistent across reboots
sudo setsebool -P httpd_can_network_connect on

#Send a HTTP GET request to the local host and display the response
curl localhost

#Send another HTTP GET request to the local host and display the response
curl localhost

#From the browser 192.168.56.103/balancer-manager