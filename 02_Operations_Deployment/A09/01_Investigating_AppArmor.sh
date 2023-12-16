#Working on ubuntu1

#Display the status of the 'apparmor' service
sudo systemctl status apparmor

#Display the AppArmor status
aa-status

#Display the AppArmor status with sudo privileges
sudo aa-status

#Display the AppArmor status, showing only profiles in complain mode
sudo aa-status --complaining

#Display the AppArmor status, showing only profiles in enforce mode
sudo aa-status --enforced

#List the files in the '/etc/apparmor.d' directory
ls /etc/apparmor.d

#Display the package that installed the '/etc/apparmor.d/lsb_release' file
dpkg -S /etc/apparmor.d/lsb_release

#Display detailed information about the 'apparmor' package
apt show apparmor