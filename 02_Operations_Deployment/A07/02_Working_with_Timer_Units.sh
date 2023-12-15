#Working on unbuntu1

#List all active timer units
systemctl list-timers

#Display the contents of the 'logrotate.timer' unit file
systemctl cat logrotate.timer

#Display the manual page for systemd timer unit files, and search for the word 'Accur'
man 5 systemd.timer
/Accur

#Edit the 'backup.service' unit file, creating a new file if it does not exist
sudo systemctl edit backup.service --full --force

#Verify the 'backup.service' unit file for any configuration errors
sudo systemd-analyze verify /etc/systemd/system/backup.service

#Edit the file with an error
sudo systemctl edit backup.service --full --force

#Verify the 'backup.service' unit file for any configuration errors
sudo systemd-analyze verify /etc/systemd/system/backup.service

#Undo the settings
sudo systemctl edit backup.service --full --force

#Verify the 'backup.service' unit file for any configuration errors
sudo systemd-analyze verify /etc/systemd/system/backup.service

#Edit the 'backup.timer' unit file, creating a new file if it does not exist
sudo systemctl edit backup.timer --full --force

#Verify the 'backup.timer' unit file for any configuration errors
sudo systemd-analyze verify /etc/systemd/system/backup.timer

#Enable the 'backup.timer' unit, which will start it at boot
sudo systemctl enable backup.timer

#Reboot the system
sudo reboot

#List all active timer units
systemctl list-timers