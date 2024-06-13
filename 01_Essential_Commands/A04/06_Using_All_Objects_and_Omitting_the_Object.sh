#Set the umask value to 7, which means that new files will have permissions of 770 (rwxrwx---)
umask 7

#Create a new file named 'another_newfile'
touch another_newfile

#List the 'another_newfile' file in long format, which includes detailed information such as file permissions, number of links, owner, group, size, and time of last modification
ls -l another_newfile

#Add execute permissions to 'another_newfile' for the user who owns the file, and display a message about what changes were made
chmod -v +x another_newfile

#Add execute permissions to 'another_newfile' for all users (user, group, and others)
chmod a+x another_newfile