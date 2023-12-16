#Working on ubuntu1

#Display an extended long-format listing of all processes, and filter the output for lines containing the word 'bash'
ps -elf | grep bash

#Display the process IDs of processes named 'bash'
pgrep bash