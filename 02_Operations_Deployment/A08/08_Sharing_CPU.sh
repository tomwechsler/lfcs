#Working on ubuntu1

#Run the 'sleep 1000' command in the background
sleep 1000 &

#Display a long-format listing of the processes named 'sleep'
ps -lfp $(pgrep sleep)

#Run the 'sleep 1000' command in the background with a nice value of -10
nice -10 sleep 1000 &

#Niceness values range from -20 (most favorable to the process) to 19 (least favorable to the process)

#Display a long-format listing of the processes named 'sleep'
ps -lfp $(pgrep sleep)

#Change the nice value of the process with PID <PID> to 19
renice 19 -p <PID>

#Change the nice value of the process with PID <PID> to -15, using sudo to run the command as root
sudo renice -15 -p <PID>

#Display an extended long-format listing of all processes
ps -alf