#Working on ubuntu1

#Install the 'postfix' package using 'sudo' privileges. The '-y' option automatically answers 'yes' to prompts.
sudo apt install -y postfix

#Check the status of the 'postfix' service using 'systemctl'
sudo systemctl status postfix

#Display the manual page for the 'apt' command
man apt

#Remove the 'postfix' package using 'sudo' privileges. The '-y' option automatically answers 'yes' to prompts.
sudo apt remove -y postfix

#Purge the 'postfix' package using 'sudo' privileges. This removes the package along with its configuration files. The '-y' option automatically answers 'yes' to prompts.
sudo apt purge -y postfix

#Remove unused packages and dependencies using 'sudo' privileges. The '-y' option automatically answers 'yes' to prompts.
sudo apt autoremove -y

#The options are low, medium, high, critical
sudo DEBIAN_PRIORITY=low apt install -y postfix