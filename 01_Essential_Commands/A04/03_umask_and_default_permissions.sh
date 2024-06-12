#A file with the permissions
cat octal.txt

#Default permissions for files:
666

#Default permissions for directories:
777

#The current umask value affects default permissions
002

#Display the current umask value, which determines the default file permissions for new files and directories
umask

#Create a new file named 'f1'
touch f1

#List the 'f1' file in long format, which includes detailed information such as file permissions, number of links, owner, group, size, and time of last modification
ls -l f1

#Create a new directory named 'dirone'
mkdir dirone

#List the 'dirone' directory in long format
ls -ld dirone

#Set the umask value to 0, which means that new files and directories will have the most permissive permissions
umask 0

#Display the current umask value
umask

#Create a new file named 'f2'
touch f2

#List the 'f2' file in long format
ls -l f2

#Create a new directory named 'dirtwo'
mkdir dirtwo

#List the 'dirtwo' directory in long format
ls -ld dirtwo

#Set the umask value to 077, which means that new files and directories will have the most restrictive permissions
umask 077

#Create a new file named 'f3'
touch f3

#List the 'f3' file in long format
ls -l f3

#Add a umask value and command to a login script to persist setings