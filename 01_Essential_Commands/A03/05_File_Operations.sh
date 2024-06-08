#Copy requires read to the source file and write to the target directory
cp

cp /etc/hosts ~

cp -i /etc/hosts ~

ls

#Overrides the existing file
cp /etc/hosts ~

#Copy the '/etc/hosts' file to the home directory, creating a numbered backup of the file if it already exists
cp --backup=numbered /etc/hosts ~

#List the files in the current directory
ls

#Copy the '/etc/hosts' file to the home directory again, creating another numbered backup of the file
cp --backup=numbered /etc/hosts ~

#List the files in the current directory
ls

#Clear the terminal screen (this command may not work in all environments)
ctrl +l

#List the 'hosts*' files in the current directory in long format, which includes detailed information such as file permissions, number of links, owner, group, size, and time of last modification
ls -l hosts*

#Remove the 'hosts*' files in the current directory
rm hosts*

#List the 'hosts*' files in the current directory in long format again, to confirm that they have been removed
ls -l hosts*

#With mv we can move or rename files and requires both read and write to the source and target directories
mv

#Move the 'file1' to a new location and rename it as 'stdout'
mv file1 stdout

#Move the 'file2' to a new location and rename it as 'error'
mv file2 error

#Move the 'file3' to a new location and rename it as 'combined'
mv file3 combined

#List the files in the current directory
ls

#Move the 'stdout' file into the 'dir1' directory
mv stdout dir1

#List the files in the 'dir1' directory
ls dir1

#no permission
mv /etc/hosts .

#The delete a file we can use rm, use -rf to delete a directory and its content
rm

rm -rf ubuntu