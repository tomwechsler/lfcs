#Working on the rocky system

#Install the 'haproxy', 'vim', and 'git' packages
sudo dnf install -y haproxy vim git

#Make a backup of the original 'haproxy.cfg' file by copying it to 'haproxy.cfg.old'
sudo cp /etc/haproxy/haproxy.cfg{,.old}

#List the contents of the '/etc/haproxy/' directory
ls -l /etc/haproxy/

#Open the 'haproxy.cfg' file in the vim text editor
sudo vim /etc/haproxy/haproxy.cfg

#Edit frontend main bind *:80 and backend main server
#Edit the backend app server ubuntu1 192.168.56.101:80 check and the same for ubuntu2

#Check the syntax and configuration of the HAProxy configuration file
haproxy -c -f /etc/haproxy/haproxy.cfg

#Enable and start the 'haproxy' service
sudo systemctl enable --now haproxy

#Remove all lines from the HAProxy configuration file that are either empty or start with a '#'
sudo sed -E -i '/^\s*(#|$)/d' /etc/haproxy/haproxy.cfg

#Display the content of the HAProxy configuration file
cat /etc/haproxy/haproxy.cfg

#Send a HTTP GET request to the local host and display the response
curl localhost

#Send another HTTP GET request to the local host and display the response
curl localhost

#Send yet another HTTP GET request to the local host and display the response
curl localhost