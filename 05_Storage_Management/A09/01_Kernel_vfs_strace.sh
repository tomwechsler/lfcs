#Working on ubuntu1

cat /etc/hosts

#strace is a powerful command-line tool for debugging and troubleshooting programs in Unix-like operating systems such as Linux.
strace cat /etc/hosts


###
#The Kernel Virtual File System (VFS), also known as the Virtual Filesystem Switch, is a software layer within the kernel. 
#It provides a common interface for all system calls related to a standard Unix filesystem. The VFS acts as an intermediary between 
#the user and the file's backing filesystem, abstracting the details of various filesystem implementations¹. This allows different types of 
#filesystems to coexist and be accessed through generic calls such as `open()`, `read()`, `write()`, etc. It's like a translator that allows 
#userspace programs to communicate with different filesystems in a uniform way.
###