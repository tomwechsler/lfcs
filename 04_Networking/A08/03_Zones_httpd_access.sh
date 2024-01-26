#Working on the rocky system

#Switch to the root user
sudo -i

#Install the httpd service
dnf install -y httpd

#Enable and start the httpd service
systemctl enable --now httpd

#Curl the localhost
curl localhost

#Switch to ubuntu1
curl 192.168.56.103 #This should fail

#Use ping
ping -c 3 192.168.56.103 #This should work

#Switch to ubuntu2
curl 192.168.56.103 #This should fail

#Back on rocky
ip a sh #The IP address was correct

#Add the http service to the public zone
firewall-cmd --add-service=http

#Where are the xml files?
ls /usr/lib/firewalld/services/

#Cat the http service file
cat /usr/lib/firewalld/services/http.xml

#Write the changes to the permanent configuration
firewall-cmd --runtime-to-permanent

#Switch to ubuntu1
curl 192.168.56.103

#Switch to ubuntu2
curl 192.168.56.103

#Back on rocky
firewall-cmd --get-zones

#Block ubuntu2
firewall-cmd --zone drop --add-source 192.168.56.102

#Write the changes to the permanent configuration
firewall-cmd --runtime-to-permanent

#Switch to ubuntu1
curl 192.168.56.103

#Switch to ubuntu2
curl 192.168.56.103 #This will fail

#Also SSH will fail
ssh 192.168.56.102