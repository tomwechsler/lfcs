#Do not forget, permissions are not cumulative!
umask

#Write the string 'hello' to a new file named 'new_file'
echo hello > new_file

#Display the contents of 'new_file'
cat new_file

#List the 'new_file' in long format, which includes detailed information such as file permissions, number of links, owner, group, size, and time of last modification
ls -l new_file

#Change the permissions of 'new_file' to 006 (---rw-), and display a message about what changes were made
chmod -v 006 new_file #or

#not cumulative
cat new_file

#Change the permissions of 'new_file' to give the group read and write permissions, and display a message about what changes were made
chmod -v g=rw new_file

#List the 'new_file' in long format, which includes detailed information such as file permissions, number of links, owner, group, size, and time of last modification
ls -l new_file

#not cumulative
cat new_file

#Change the permissions of 'new_file' to 666 (rw-rw-rw-), and display a message about what changes were made
chmod -v 666 new_file

#Display the contents of 'new_file'
cat new_file

#Remove all permissions for others on 'new_file', and display a message about what changes were made
chmod -v o= new_file

#Remove write permissions for the group on 'new_file', and display a message about what changes were made
chmod -v g-w new_file