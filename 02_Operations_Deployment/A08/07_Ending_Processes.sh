#Working on ubuntu1

#Display a snapshot of the current processes
ps

#List the contents of the '/proc' directory, which contains information about the system and running processes
ls /proc

#Change the current directory to the directory for the current shell's process ID
cd /proc/$$

#List the contents of the current directory
ls

#Display a full-format listing of the current processes
ps -f

#Display a long-format listing of the current processes
ps -fl

#Display an extended long-format listing of all processes
ps -elf

#Display a long-format listing of the process with PID 1
ps -lfp1

#Display an extended long-format listing of all processes, and filter the output for lines containing the word 'bash'
ps -elf | grep bash

#Display the process IDs of processes named 'bash'
pgrep bash

#Display a long-format listing of the processes named 'bash'
ps -lp $(pgrep bash)

#List the signal names that can be used with the 'kill' command
kill -l

#Run the 'sleep 1000' command in the background
sleep 1000 &

#Display a snapshot of the current processes
ps

#Send the TERM signal to the process with PID 15365, requesting it to terminate
kill 15365

#List the contents of the current directory
ls

#Run the 'sleep 1000' command in the background
sleep 1000 &

#Send the TERM signal to all processes named 'sleep', requesting them to terminate
pkill sleep

#Run the 'sleep 1000' command in the background
sleep 1000 &

#Send the KILL signal to all processes named 'sleep', forcing them to terminate
pkill -9 sleep

#Run the 'sleep 1000' command in the background
sleep 1000 &

#Send the TERM signal to all processes named 'sleep', requesting them to terminate
pkill -15 sleep

#List the signal names that can be used with the 'kill' command
kill -l