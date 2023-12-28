#Working on ubuntu1

#List the contents of the /home directory
ls /home

#Display the user ID, group ID, and groups for 'user2'
id user2

#Display the user ID, group ID, and groups for the current user
id

#Create a new file named 'file1'
touch file1

#List the details of 'file1'
ls -l file1

#Modify the 'user2' user to be a member of the 'staff' group
sudo usermod -G staff user2

#Display the user ID, group ID, and groups for 'user2' again to confirm the changes
id user2

#Add 'user2' to the 'admin' and 'sudo' groups without removing them from their current groups
sudo usermod -aG admin,sudo user2

#Display the user ID, group ID, and groups for 'user2' again to confirm the changes
id user2

#Delete the 'user2' user
sudo userdel user2

#List the contents of the /home directory again to confirm the changes
ls -l /home

#Delete the 'user3' user and their home directory
sudo userdel -r user3

#List the contents of the /home directory again to confirm the changes
ls /home

#Find files in the /home and /var directories that do not belong to any user
sudo find /home /var -nouser

#Repeat the last command but with the -delete option to delete the files
!! -delete