#Open the 'hosts' file with vim, placing the cursor on the first line
vim +1 hosts

#Open the 'hosts' file in the home directory with vim, placing the cursor on the last line
vim +$ ~/hosts

#Open the 'hosts' file in the home directory with vim, placing the cursor on the first line containing 'google'
vim +/google/ ~/hosts

#Start the vim tutorial
vimtutor

#Insert a line at the beginning of the 'hosts' file in the home directory with the text '#This is a hosts file'
sed -i '1i #This is a hosts file' ~/hosts

#Display the first 10 lines of the current file
head

#Delete the last line of the 'hosts' file in the home directory
sed -i '$d' ~/hosts

#Display the last 10 lines of the current file
tail

#Replace the first occurrence of 'google' with 'googledns' on each line of the 'hosts' file in the home directory
sed -i 's/google/googledns/' ~/hosts

#Display the contents of the 'hosts' file
cat hosts