#Working on unbuntu1

#Display the type of the 'info.sh' file
file info.sh

#Copy the 'info.sh' file to 'info2.sh'
cp info.sh info2.sh

#Insert '#!/bin/bash' at the first line of all files starting with 'info'
sed -i '1i#!/bin/bash' info*

#Display the type of the 'info.sh' file again
file info.sh

#Change the permissions of the 'info.sh' file to make it executable for all users, and display the changes
chmod -v a+x info.sh

#Execute the 'info.sh' script
./info.sh

#Display the current PATH environment variable
echo $PATH

#Append '/home/vagrant/shellscripting' to the PATH environment variable
PATH=$PATH:/home/vagrant/shellscripting

#Display the current PATH environment variable again
echo $PATH

#Change the current directory to the home directory
cd

#Try to execute the 'info.sh' script. This will only work if 'info.sh' is in a directory listed in the PATH environment variable.
info.sh

#Change the current directory back to the previous directory
cd -