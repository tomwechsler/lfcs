#Ownership of a file can be controlled with chown and chgrp commands
ls

#Display the contents of 'new_file'
cat new_file

#Change the permissions of 'new_file' to 006 (---rw-), and display a message about what changes were made
chmod 006 new_file

#List the 'new_file' in long format, which includes detailed information such as file permissions, number of links, owner, group, size, and time of last modification
ls -l new_file

#Does not work
chown root new_file

#Execute the previous command as the superuser
sudo !!

#List the 'new_file' in long format, which includes detailed information such as file permissions, number of links, owner, group, size, and time of last modification
ls -l new_file

#No group permission
cat new_file

#Print real and effective user and group IDs
id

#Change the group ownership of 'new_file' to 'sudo' using superuser privileges
sudo chgrp sudo new_file

#List the 'new_file' in long format, which includes detailed information such as file permissions, number of links, owner, group, size, and time of last modification
ls -l new_file

#Display the contents of 'new_file'
cat new_file

#Print real and effective user and group IDs again
id