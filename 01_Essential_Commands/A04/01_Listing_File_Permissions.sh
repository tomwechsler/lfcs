ls -l /etc/hosts
-rw-r--r-- 1 root root 220 Jan 10 09:56 /etc/hosts 

ls -l /etc/shadow 
---------- 1 root root 970 Jan 10 10:01 /etc/shadow

<file type> <permissions> <link count> <user group> <size> <modified time>

#List the '/etc/services' file in long format, which includes detailed information such as file permissions, number of links, owner, group, size, and time of last modification
ls -l /etc/services

#List the '/etc/services' file in long format with file sizes in human readable format (e.g., KB, MB)
ls -lh /etc/services

#Open the '/etc/services' file with vim for editing (requires sudo permissions)
sudo vim /etc/services

#List the '/etc/services' file in long format with file sizes in human readable format again, to see if any changes were made
ls -lh /etc/services

#Display detailed status of the '/etc/services' file
stat /etc/services 

#Display the file permissions of the '/etc/services' file in octal format
stat -c %a /etc/services

#Display the file permissions of the '/etc/services' file in human readable format
stat -c %A /etc/services