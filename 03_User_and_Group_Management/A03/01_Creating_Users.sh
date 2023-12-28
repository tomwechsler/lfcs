#Working on ubuntu1

#Display the type of the 'useradd' binary file
file $(which useradd)

#Display the type of the 'adduser' binary file
file $(which adduser)

#Display the help message for the 'useradd' command
useradd --help

#Create a new user named 'user1'
sudo useradd user1

#Display the last line of the /etc/passwd file
tail -n1 /etc/passwd

#Display the entry for 'user1' from the passwd database
getent passwd user1

#Display the line that starts with 'passwd:' from the /etc/nsswitch.conf file
grep '^passwd:' /etc/nsswitch.conf

#Display the manual page for the passwd file format
man 5 passwd

#Display the user ID, group ID, and groups for 'user1'
id user1

#List the contents of the /home directory
ls /home

#Create a new user named 'user2' with a home directory, the /usr/bin/bash shell, and membership in the 'admin' and 'sudo' groups
sudo useradd -m -s /usr/bin/bash -G admin,sudo user2

#List the contents of the /home directory again
ls /home

#Display the user ID, group ID, and groups for 'user2'
id user2

#Repeat the command starting with ta
!ta