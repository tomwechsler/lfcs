#Working on ubuntu1

#Generate an AppArmor profile for '/usr/bin/file_test.py' using 'aa-easyprof'
aa-easyprof /usr/bin/file_test.py

#Generate an AppArmor profile for '/usr/bin/file_test.py' using 'aa-easyprof', and write the output to '/etc/apparmor.d/usr.bin.file_test.py' with 'sudo' privileges
aa-easyprof /usr/bin/file_test.py | sudo tee /etc/apparmor.d/usr.bin.file_test.py

#Display the contents of the '/etc/apparmor.d/usr.bin.file_test.py' file
cat /etc/apparmor.d/usr.bin.file_test.py

#Display the AppArmor status, showing only profiles in enforce mode
sudo aa-status --enforced

#Reload the AppArmor profile for '/usr/bin/file_test.py'
sudo apparmor_parser -r /etc/apparmor.d/usr.bin.file_test.py

#Display the AppArmor status, showing only profiles in enforce mode
sudo aa-status --enforced

#We get an error
file_test.py
/usr/bin/python3: cant open file '/usr/bin/file_test.py': [Errno 13] Permission denied

#Set the AppArmor profile for '/etc/apparmor.d/usr.bin.file_test.py' to complain mode
sudo aa-complain /etc/apparmor.d/usr.bin.file_test.py

#Display the AppArmor status, showing only profiles in complain mode
sudo aa-status --complaining

#Display the AppArmor status, showing only profiles in enforce mode
sudo aa-status --enforced

#Run the 'file_test.py' script
file_test.py

#Start the 'aa-notify' program to monitor AppArmor log messages, with a severity level of 1 and verbose output
sudo aa-notify -s 1 -v

#Display the system journal, filtering for lines containing 'apparmor="DENIED"'
sudo journalctl -k -g 'apparmor="DENIED"'

#Start the 'aa-logprof' program to update AppArmor profiles based on log events
sudo aa-logprof

#Set the AppArmor profile for '/etc/apparmor.d/usr.bin.file_test.py' to enforce mode
sudo aa-enforce /etc/apparmor.d/usr.bin.file_test.py

#Run the 'file_test.py' script
file_test.py

#Edit the file name (in the script) to '/tmp/textfile'
sudo vim /usr/bin/file_test.py

#Run the 'file_test.py' script
file_test.py

#Run the 'file_test.py' script with 'sudo' privileges
sudo file_test.py