#Working on unbuntu1

#By the way did our backup job work?
sudo ls /root

#Check the status of the 'atd' service
sudo systemctl status atd

#List the at jobs for the current user
atq

#Create a new at job
at teatime
date
#CTRL + d to exit at

#List the at jobs for the current user
atq

#Be careful not to mistype
at 13:25 Nov 14 2022
ls /etc
#CTRL + d to exit at

#List the at jobs for the current user
atq

#Remove an at job
atrm 2

#Create a new at job
at 13:25 Nov 14 2022
ls /etc

#List the at jobs number 1
at -c 1