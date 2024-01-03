#Working on ubuntu1

#Display the last 4 lines of the '/etc/passwd' file, which contains user account information
tail -n4 /etc/passwd

#Edit the '/etc/passwd' file with 'vipw', a safe editor for password file
sudo vipw

#Display the last 4 lines of the '/etc/passwd' file again, to see if any changes were made
tail -n4 /etc/passwd

#Edit the '/etc/shadow' file with 'vipw', a safe editor for shadow file
sudo vipw -s