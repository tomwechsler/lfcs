#Working on unbuntu1

#List the cron jobs for the current user
crontab -l

#Create a user cron job
crontab -e

#This cron job will run every minute and append the current date to the '/tmp/date' file.
* * * * * date >> /tmp/date 

#Follow the system log
sudo journalctl -f

#Remove the crontab file
crontab -r

#By the way did our backup job work?
sudo ls /root

#Did our user cron job work?
sudo ls /tmp