#Working on ubuntu1

#List all active socket units
systemctl list-sockets

#Install the Cockpit server management platform
sudo apt install -y cockpit

#List all active socket units again to see the changes
systemctl list-sockets

#Display all open network sockets and the programs that own them
sudo ss -ntlp

#Display all open network sockets on port 9090 and the programs that own them
sudo ss -ntlp 'sport = :9090'

#Send a request to localhost on port 9090
curl localhost:9090

#Display all open network sockets on port 9090 again
sudo ss -ntlp 'sport = :9090'

#Create a new directory named 'web'
sudo mkdir /web

#Create a new file named 'index.html' in the 'web' directory with the content "Hello World"
echo "Hello World" | sudo tee /web/index.html

#Change directory to 'web'
cd /web

#List the contents of the 'web' directory
ls

#Start a simple HTTP server on port 8000
python3 -m http.server &>/dev/null &

#Send a request to localhost on port 8000
curl localhost:8000

#Kill the background job with job ID 1 (the HTTP server)
kill %1

#Try to send a request to localhost on port 8000 again
curl localhost:8000

#Change directory back to home
cd

#Display the content of 'web.socket' file
cat web.socket

#Edit the 'web.socket' unit file with an editor
sudo systemctl edit --full --force web.socket

#Display the content of 'web.service' file
cat web.service

#Edit the 'web.service' unit file with an editor
sudo systemctl edit --full --force web.service

#Reload the systemd manager configuration
sudo systemctl enable daemon-reload

#Enable and start the 'web.socket' unit
sudo systemctl enable --now web.socket

#List all active socket units again to confirm the changes
systemctl list-sockets

#Send a request to localhost on port 8000
curl localhost:8000

#Send a request to localhost on port 8080
curl localhost:8080

#Send a request to localhost on port 8000 again
curl localhost:8000

#Display the content of 'web.*' unit files
systemctl cat web.*