#Working on ubuntu1

#Create a new directory named 'ssl'
sudo mkdir /ssl

#Copy the certificate and private key to the 'ssl' directory
sudo cp /home/vagrant/{certificate.crt,private.key} /ssl

#List the contents of the 'ssl' directory
ls /ssl

#Install NGINX web server and w3m text-based web browser
sudo apt install -y nginx w3m

#Display all open network sockets and the programs that own them
ss -ntl

#Copy the 'my-site' configuration file to the NGINX sites-available directory
sudo cp lfcs/01_Essential_Commands/A10/my-site /etc/nginx/sites-available/

#Display the content of the 'my-site' configuration file
cat /etc/nginx/sites-available/my-site

#Create a new file named 'index.html' in the NGINX html directory with the content "Hello from NGINX"
echo "Hello from NGINX" | sudo tee /var/www/html/index.html

#List the contents of the NGINX sites-enabled directory
ls -l /etc/nginx/sites-enabled/

#Remove the default site configuration from the NGINX sites-enabled directory
sudo rm /etc/nginx/sites-enabled/default

#Create a symbolic link from the 'my-site' configuration file in the sites-available directory to the sites-enabled directory
sudo ln -s /etc/nginx/sites-available/my-site /etc/nginx/sites-enabled/

#List the contents of the NGINX sites-enabled directory again to confirm the changes
ls -l /etc/nginx/sites-enabled/

#Restart the NGINX service
sudo systemctl restart nginx

#Display all open network sockets and the programs that own them again to confirm the changes
ss -ntl

#Add a new line to the end of the hosts file to map the domain www.example.com to the local IP address
sudo sed -i '$a 127.0.0.1 www.example.com' /etc/hosts

#Display the last 10 lines of the hosts file to confirm the changes
tail /etc/hosts

#Use the w3m browser to navigate to www.example.com
w3m www.example.com