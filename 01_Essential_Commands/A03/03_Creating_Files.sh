#Creates an empty file
touch file1

#List the 'file1' in long format, which includes detailed information such as file permissions, number of links, owner, group, size, and time of last modification
ls -l file1

#Determine the file type of 'file1'
file file1

#Display the contents of 'file1'
cat file1

#Update the access and modification times of 'file1' to the current time. If 'file1' does not exist, create it
touch file1

#If the file already exists, we will update the last modified time stamp
ls -l file1