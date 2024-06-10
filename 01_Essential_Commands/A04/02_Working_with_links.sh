#Create a new directory named 'links'
mkdir links

#List the 'links' directory in long format, which includes detailed information such as file permissions, number of links, owner, group, size, and time of last modification
ls -ld links/

#List the 'links' directory in long format, including the inode number
ls -ldi links/

#The same
ls -ldi links/ links/.

mkdir links/d1

ls -ldi links/ links/.

#Each subdirectory has a dot dot directory pointing to its parent
ls -ldi links/ links/. links/d1/..

#Find out all subdirectory (<number> -2)
ls -ld /etc

#Change the current directory to 'links/'
cd links/

#Write the string 'hello' to a file named 'file1'
echo hello > file1

#Create a hard link named 'file2' that points to 'file1'
ln file1 file2

#List the files in the current directory in long format, including inode numbers
ls -li

#Display the contents of 'file1'
cat file1

#Display the contents of 'file2'
cat file2

#Remove 'file1'
rm file1

#Display the contents of 'file2' again, to show that it still exists and contains the data of 'file1' even though 'file1' was removed
cat file2

#Create a symbolic link in the current directory that points to '/usr/share/doc'
ln -s /usr/share/doc

#The little l shows it's symbolic link
ls -l

#Change the current directory to 'doc/'
cd doc

#Print the current working directory
pwd

#Print the current working directory, resolving all symbolic links
pwd -P

#Change the current directory to the parent directory
cd ..

#List the files in the current directory
ls

#Create a symbolic link named 'file3' that points to 'file2'
ln -s file2 file3

#List the files in the current directory in long format, which includes detailed information such as file permissions, number of links, owner, group, size, and time of last modification
ls -l

#Display the contents of 'file3'
cat file3

#yy copy and p paste
vim file3

cat file2