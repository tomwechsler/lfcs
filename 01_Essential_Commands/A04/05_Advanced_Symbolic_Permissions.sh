#Set the umask value to 7, which means that new files will have permissions of 770 (rwxrwx---)
umask 7

#Create new directories 'dir1' and 'dir2' inside the 'upper' directory
mkdir -p upper/{dir1,dir2} 

#Display the directory structure of 'upper'
tree upper

#Create a new file named 'file' inside both 'dir1' and 'dir2'
touch upper/{dir1,dir2}/file

#List all files and directories inside 'upper', including their detailed information
ls -lR upper/

#Add execute permissions to all directories and files inside 'upper' for all users (user, group, and others), and display a message about what changes were made
chmod -vR a+X upper

#Create a new file named 'another_newfile'
touch another_newfile

#List the 'another_newfile' file in long format, which includes detailed information such as file permissions, number of links, owner, group, size, and time of last modification
ls -l another_newfile

#Does not apply to all, because of the umask
chmod -v +x another_newfile

chmod -v a+x another_newfile