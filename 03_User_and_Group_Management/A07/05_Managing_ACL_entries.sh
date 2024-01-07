#Working on the rocky system

#Create a new directory named 'private' with 700 permissions
sudo mkdir -m 700 /private

#No permissions for 'vagrant' user to access the '/private' directory
cd /private

#List the permissions of the '/private' directory
ls -ld /private

#Set the ACL for the '/private' directory to give 'vagrant' user read, write, and execute permissions with root privileges
sudo setfacl -m u:vagrant:rwx /private

#List the permissions of the '/private' directory after setting the ACL
ls -ld /private #Notice the '+' sign at the end of the permissions

#Get the ACL for the '/private' directory
getfacl /private #Notice the mask entry

#Set the permission for the group to read and write
sudo chmod -v g=rw /private

#Get the ACL for the '/private' directory
getfacl /private #Notice the mask entry and the effective permissions

#Set the permission for the group to read and write
sudo chmod -v g=rwx /private

#Get the ACL for the '/private' directory
getfacl /private #Notice the mask entry and the effective permissions

#Move into the '/private' directory
cd /private

#Back to the home directory
cd

#Set the ACL for the '/private' directory to give 'apache' user read and execute permissions with root privileges
sudo setfacl -m u:apache:rx /private

#Remove the ACL for 'apache' user from the '/private' directory with root privileges
sudo setfacl -x u:apache /private

#Get the ACL for the '/private' directory after removing the ACL for 'apache' user
getfacl /private

#Set the ACL for the '/private' directory to give 'wheel' group read and execute permissions with root privileges
sudo setfacl -m g:wheel:rx /private
#or with a oneliner
sudo setfacl -m u:vagrant:rwx,d:u:vagrant:rwx,g:wheel:rx /private

#Get the ACL for the '/private' directory
getfacl /private

#Bevor backing up the ACLs, lets copy some ACLs (working in the home directory)
ls
getfacl file1
touch file2
getfacl file1 | setfacl --set-file=- file2
getfacl file2

#Backup the ACL for the '/private' directory to the '/tmp/backupacl' file
getfacl /private > /tmp/backupacl

#Display the contents of the '/tmp/backupacl' file
cat /tmp/backupacl

#Remove the ACL for 'wheel' group from the '/private' directory with root privileges
sudo setfacl -x g:wheel /private

#Get the ACL for the '/private' directory after removing the ACL for 'wheel' group
getfacl /private

#Remove the default ACL from the '/private' directory with root privileges
sudo setfacl -k /private

#Get the ACL for the '/private' directory after removing the default ACL
getfacl /private

#Remove all ACLs from the '/private' directory with root privileges
sudo setfacl -b /private

#Get the ACL for the '/private' directory after removing all ACLs
getfacl /private

#Change the current directory to '/private'
cd /private #Permission denied

#Display the contents of the '/tmp/backupacl' file
cat /tmp/backupacl

#Change the current directory to '/'
cd /

#Restore the ACL for the '/private' directory from the '/tmp/backupacl' file with root privileges
sudo setfacl --restore=/tmp/backupacl

#List the permissions of the '/private' directory
ls -ld /private

#Get the ACL for the '/private' directory
getfacl /private