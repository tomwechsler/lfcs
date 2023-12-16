#Working on ubuntu1

#Generate an AppArmor profile for '/usr/bin/file_test.py' using 'aa-easyprof', and write the output to '/etc/apparmor.d/usr.bin.file_test.py' with 'sudo' privileges
aa-easyprof /usr/bin/file_test.py | sudo tee /etc/apparmor.d/usr.bin.file_test.py

#Display the AppArmor status, showing only profiles in enforce mode
sudo aa-status --enforced

#Reload the AppArmor profile for '/usr/bin/file_test.py'
sudo apparmor_parser -r /etc/apparmor.d/usr.bin.file_test.py

#Display the AppArmor status, showing only profiles in enforce mode
sudo aa-status --enforced