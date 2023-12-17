#Working on rocky

#Display all SELinux booleans
getsebool -a

#semange command is not recognized, it might be a typo for semanage
semanage

#Install the policycoreutils, setools, setools-console, and setroubleshoot packages
sudo dnf install -y policycoreutils setools setools-console setroubleshoot

#List all SELinux booleans
sudo semanage boolean --list

#List all SELinux booleans that contain 'secure_mode'
sudo semanage boolean --list | grep secure_mode

#Temporarily change the SELinux mode to Permissive (errors are logged but not prevented)
sudo setenforce Permissive

#Enable the 'secure_mode_policyload' SELinux boolean (use -P to make it persistent)
sudo setsebool secure_mode_policyload on

#List all SELinux booleans that contain 'secure_mode' again to confirm the changes
sudo semanage boolean --list | grep secure_mode

#Temporarily change the SELinux mode back to Enforcing (errors are logged and prevented)
sudo setenforce Enforcing #We can make it more secure

#Display the current SELinux mode to confirm the changes
getenforce

#Temporarily change the SELinux mode to Permissive again
sudo setenforce Permissive #But we can't make it less secure

#Reboot the system
sudo reboot

#Temporarily change the SELinux mode to Permissive after the reboot
sudo setenforce Permissive

#Display the current SELinux mode to confirm the changes
getenforce

#Temporarily change the SELinux mode back to Enforcing
sudo setenforce Enforcing