#Update the repos metadata
sudo apt update

#Install the 'mlocate' package which provides the 'locate' command, a tool for finding files by name
sudo apt install -y mlocate

#Update the 'locate' command's database of files
sudo updatedb

#Display statistics about the 'locate' command's database
locate -S

#Display the manual page for the 'locate' command
man locate

#Use the 'locate' command to find files named 'hosts'
locate -b hosts

#Use the 'locate' command to find files named 'hosts' that start at the beginning of the pathname
locate -br '^hosts'

#Use the 'locate' command to find files named 'hosts' that match exactly the pathname
locate -br '^hosts$'

#Remove the file named 'hosts'
rm hosts

#Use the 'locate' command to find files named 'hosts' that match exactly the pathname
locate -br '^hosts$'

#Use the 'locate' command to find existing files named 'hosts' that match exactly the pathname
locate -ebr '^hosts$'

#Use the 'locate' command to find existing files named 'hosts' that match exactly the pathname, ignoring case
locate -eibr '^hosts$'

#Update the locate db
sudo updatedb