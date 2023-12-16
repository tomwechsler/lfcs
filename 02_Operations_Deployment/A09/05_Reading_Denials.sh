#Working on ubuntu1

#Run the Python script
file_test.py

/usr/bin/python3: cant open file '/usr/bin/file_test.py': [Errno 13] Permission denied

#Use 'journalctl' to display the kernel logs, filtering for 'apparmor="DENIED"'
sudo journalctl -k -g 'apparmor="DENIED"'

#Use 'aa-notify' to display the AppArmor notifications
sudo aa-notify -s 1 -v