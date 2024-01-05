#Woking on ubuntu1

#Cat the .bash_logout file
cat .bash_logout

#Run the clear console command
/usr/bin/clear_console

#Add the clear command to the .bash_logout file
sed -i '$a clear' .bash_logout #appends to the last line

#Delete the last line from the .bash_logout file
sed -i '$d' .bash_logout #deletes the last line