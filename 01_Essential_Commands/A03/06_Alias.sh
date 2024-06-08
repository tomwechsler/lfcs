#List the files in the current directory
ls

#Display the aliases for the current user
alias

#Display the type of the 'ls' command
type ls

#Run the 'ls' command without alias expansion
\ls

#Run the 'ls' command without alias expansion and with the '-F' option, which appends a character to each filename indicating the file type
\ls -F

#Copy the '/etc/hosts' file to the current directory
cp /etc/hosts .

#Copy the '/etc/hosts' file to the current directory, asking for confirmation before overwriting existing files
cp -i /etc/hosts .

#Create an alias named 'cpi' for the 'cp -i' command
alias cpi='cp -i'

#Run the 'cpi' alias (which runs the 'cp -i' command)
cpi /etc/hosts .

#Create an alias named 'cpback' for the 'cp --backup=numbered' command
alias cpback='cp --backup=numbered'

#Run the 'cpback' alias (which runs the 'cp --backup=numbered' command)
cpback /etc/hosts .

#List the files in the current directory
ls

#Remove the 'cpi' alias
unalias cpi

#Display the aliases for the current user
alias

