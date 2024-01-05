#Woking on ubuntu1

#Update the package lists for upgrades and new package installations
sudo apt update

#Install the 'bash-doc' package, which contains documentation and examples for the Bash shell
sudo apt install -y bash-doc

#List the files in the '/usr/share/doc/bash/examples/startup-files/' directory, which contains example startup files for the Bash shell
ls /usr/share/doc/bash/examples/startup-files/

#Display the contents of the '.profile' file, which is a shell script that Bash runs whenever you log in to your system
cat .profile

#Display the current umask, which determines the default permissions for new files and directories
umask

#Display lines containing '#umask' from the '.profile' file
grep '#umask' .profile

#Uncomment the umask setting in the '.profile' file
sed -i '/^#umask/s/^#//' .profile ##uncomment the umask setting

#Display lines containing 'umask' from the '.profile' file
grep 'umask' .profile

#To check the settings logout and login

#Display the current umask
umask

#Undo the settings
sed -i '/^umask/s/^/#/' .profile ##to comment the line

#Run the last command beginnging with g
!g

#Display the contents of the '.bash_logout' file
cat .bash_logout

#Does not work
/usr/bin/clear_console

#Its pseudo terminal
tty

#Append the clear command to the '.bash_logout' file
sed -i '$a clear' .bash_logout #appends to the last line

#Some commands
ls
ls -la

#Now logout

#Undo the settings
sed -i '$d' .bash_logout #deletes the last line

#Display the contents of the '.bash_logout' file
cat .bash_logout