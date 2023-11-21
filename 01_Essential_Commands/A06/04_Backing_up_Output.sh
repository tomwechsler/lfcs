#Find all HTML files in the '/usr/share/doc' directory
find /usr/share/doc -type f -name '*.html'

#Find all HTML files in the '/usr/share/doc' directory and archive them using the 'cpio' utility, outputting the archive to 'backup.cpio'
find /usr/share/doc -type f -name '*.html' | cpio -ov > backup.cpio

#Create a new directory named 'restore' and change the current directory to 'restore'
mkdir restore && cd restore 

#List the files in the current directory
ls

#Extract the files from the 'backup.cpio' archive using the 'cpio' utility, ignoring the original directory paths
cpio -idv --no-absolute-filenames < ~/backup.cpio

#List the files in the current directory
ls

#Display the directory structure of the current directory in a tree-like format
tree