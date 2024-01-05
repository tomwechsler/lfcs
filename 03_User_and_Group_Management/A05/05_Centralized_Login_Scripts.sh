#Woking on ubuntu1

#List the files in the '/etc/profile' directory, which contains system-wide environment and startup programs
ls /etc/profile

#List the files in the '/etc/profile.d' directory, which contains scripts that are sourced by the '/etc/profile' script
ls /etc/profile.d

#List the files in the '/etc/bash.bashrc' directory in long format, which contains system-wide functions and aliases for the Bash shell
ls -l /etc/bash.bashrc

#Create a custom login script
sudo vim /etc/profile.d/custom.sh

umask 027
alias cleanfile="grep -E -v '^(#|$'"
set -o noclobber

#Exit the editor

#Exit the ssh session and login

#Display the aliases for the current user
alias

#Display the current umask, which determines the default permissions for new files and directories
umask

#Display the contents of the '.profile' file, which is a shell script that Bash runs whenever you log in to your system
cat .profile

#Run the 'cleanfile' command on the '.profile' file (this command is not standard and may be a custom function or script)
cleanfile .profile

#Display the current settings for shell options
set -o

#Write the string 'hello' to a file named 'file1'
echo hello > file1

#Does not work anymore
echo hello > file1

#Append works
echo hello >> file1