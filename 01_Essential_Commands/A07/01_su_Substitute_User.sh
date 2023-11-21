#No password for root
su

#Set the root password
sudo passwd root

#Switch to the root user
su

#Print the user and group IDs for the current user
id

#Exit the current shell, returning to the previous user
exit

#Switch to the root user, providing an environment similar to what the root user would expect if they logged in directly
su -l

#Print the current working directory
pwd

#Exit the current shell, returning to the previous user
exit

#Switch to the 'ubuntu' user, providing an environment similar to what the 'ubuntu' user would expect if they logged in directly
su -l ubuntu

#Use 'sudo' to switch to the 'ubuntu' user, providing an environment similar to what the 'ubuntu' user would expect if they logged in directly
sudo su - ubuntu

#Print the user and group IDs for the current user
id

#Exit the current shell, returning to the previous user
exit

#Display the manual page for the 'su' command
man su

#Use 'sudo' to lock the root user's password, preventing the root user from logging in directly
sudo passwd -l root