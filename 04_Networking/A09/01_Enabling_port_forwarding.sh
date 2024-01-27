#Woking on ubuntu1

#Switch to the root user
sudo -i

#List all current firewall rules
firewall-cmd --list-all

#Query the status of the masquerade option in the firewall
firewall-cmd --query-masquerade

#Enable the masquerade option in the firewall
firewall-cmd --add-masquerade

#Query the status of the masquerade option in the firewall again to confirm the changes
firewall-cmd --query-masquerade

#List all current firewall rules
firewall-cmd --list-all

#List all forward ports in the firewall
firewall-cmd --list-forward-ports

#Add a new forward port to the firewall
firewall-cmd --add-forward-port=port=8080:proto=tcp:toaddr=192.168.56.103:toport=80

#List all forward ports in the firewall
firewall-cmd --list-forward-ports

#Switch to ubuntu2
curl 192.168.56.101:8080

#Back on rocky
tail -n0 -f /var/log/httpd/access_log

#Switch to ubuntu2
curl 192.168.56.101:8080

#Back on rocky