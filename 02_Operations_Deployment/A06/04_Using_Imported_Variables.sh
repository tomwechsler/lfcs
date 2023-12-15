#Working with ubuntu1

#Display the contents of the '/etc/os-release' file
cat /etc/os-release

#Import the variables from the '/etc/os-release' file into the current shell
source /etc/os-release

#Display the value of the 'PRETTY_NAME' variable, which was imported from the '/etc/os-release' file
echo $PRETTY_NAME