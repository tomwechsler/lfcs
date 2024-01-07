#Working on rocky

#Create a new file named 'file1'
touch file1

#List the details of 'file1'
ls -l file1

#Display the Access Control List (ACL) for 'file1'
getfacl file1

#Install the 'attr' package, which provides utilities to manipulate filesystem extended attributes
sudo dnf install -y attr

#Display the value of the 'system.posix_acl_access' extended attribute for 'file1'
getfattr -n system.posix_acl_access file1

#Set an ACL entry on 'file1' that gives the 'root' user read and write permissions
setfacl -m u:root:rw file1

#List the details of 'file1' again to confirm the changes
ls -l file1

#Display the ACL for 'file1' again to confirm the changes
getfacl file1

#Display the value of the 'system.posix_acl_access' extended attribute for 'file1' again to confirm the changes
getfattr -n system.posix_acl_access file1