#Working on ubuntu1

#Display the journal for the 'multipathd' unit, and then output appended data as the file grows
sudo journalctl --unit multipathd -f

#Display the status of the 'multipathd' service
sudo systemctl status multipathd

#Display the manual page for the 'multipath.conf' file
man 5 multipath.conf