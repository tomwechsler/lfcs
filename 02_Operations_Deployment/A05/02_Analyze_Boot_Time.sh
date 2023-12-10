#Working on unbuntu1

#Display a tree of processes
pstree

#Display detailed information about the process with PID 1 (the init process)
ps -p1 -f

#List the details of the '/sbin/init' file, which is the executable for the init process
ls -l /sbin/init

#Analyze system boot-up performance using 'systemd-analyze'
systemd-analyze

#Display blame information for system boot-up using 'systemd-analyze blame'. This shows how long each service took to start.
systemd-analyze blame