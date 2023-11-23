#Working on ubuntu1

#Analyze and show boot-up performance
systemd-analyze

#Show a list of all running units, ordered by the time they took to initialize
systemd-analyze blame

#Dump the state of the manager
systemd-analyze dump