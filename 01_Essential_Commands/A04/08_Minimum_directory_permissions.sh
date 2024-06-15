#The minimum permissions needed for a directory is just the execute bit

#This allows a user to enter the directory, but not to list the directory content

#Users must know the name of the file they need to access and having read permissions to the file those files

#Create a new directory named 'shared' with permissions 751 (rwxr-x--x) using superuser privileges
sudo mkdir -m 751 /shared

#List the '/shared' directory in long format, which includes detailed information such as file permissions, number of links, owner, group, size, and time of last modification
ls -ld /shared

#Change the current directory to '/shared'
cd /shared

#List the files in the current directory
ls

#Open the file 'file1' in the '/shared' directory with the vim editor using superuser privileges, insert the text 'ich bin groot!', save the file, and quit vim
sudo vim /shared/file1
ich bin groot!
:wq

#List the files in the current directory in long format using superuser privileges
sudo ls -l

#Display the contents of 'file1'
cat file1

#Change the current directory to the home directory
cd

#Display the contents of '/shared/file1'
cat /shared/file1

#But I am not able to list the content
ls -l /shared