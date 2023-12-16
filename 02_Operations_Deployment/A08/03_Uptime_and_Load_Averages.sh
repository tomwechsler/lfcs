#Working on ubuntu1

#Print the number of processing units available
nproc

#Display information about the CPU architecture
lscpu

#Display the system uptime and load averages for the past 1, 5, and 15 minutes
uptime

#Compress the '/usr/share/doc' directory into a '.tar.xz' file named 'share.tar.xz', and run this command in the background. The '&> /dev/null &' part redirects both standard output and standard error to '/dev/null', effectively discarding them.
tar -cJf share.tar.xz /usr/share/doc &> /dev/null &

#Continuously display the system uptime and load averages every 2 seconds (default interval for 'watch' command)
watch uptime