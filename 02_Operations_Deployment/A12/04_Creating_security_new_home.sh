#Working on rocky

#List the security context of the /home directory
ls -ldZ /home

#List the security context of the /home/vagrant directory
ls -ldZ /home/vagrant

#List the contents of the /etc/selinux/targeted/contexts/files/ directory
sudo ls /etc/selinux/targeted/contexts/files/

#Display the manual page for the semanage-fcontext command
man semanage-fcontext

#Create a new directory named 'staff'
sudo mkdir /staff

#List the security context of the /staff directory
ls -ldZ /staff

#Add a new file context for /staff, using /home as a template
sudo semanage fcontext -a -e /home /staff

#List the security context of the /staff directory again to confirm the changes
ls -ldZ /staff

#Restore the default SELinux security context for the /staff directory
sudo restorecon -v /staff

#Create a new user named 'user1' with a home directory in /staff
sudo useradd -m user1 -d /staff/user1

#List the security context of the /staff/user1 directory
sudo ls -ldZ /staff/user1