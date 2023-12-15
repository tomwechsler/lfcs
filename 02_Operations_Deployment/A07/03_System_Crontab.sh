#Working on unbuntu1

#Display the status of the 'cron' service
sudo systemctl status cron

#Search for lines starting with '#' in the '/etc/crontab' file
grep '^#' /etc/crontab

#List the files in the '/etc/cron.d/' directory
ls /etc/cron.d/

#Open the '/etc/cron.d/test' file in the 'nano' text editor
sudo nano /etc/cron.d/test

#Add a new cron job to the 'test' file. This job will run every 10 minutes between 9am and 5pm every day, and it will append the current date to the '/tmp/date' file.
*/10 9-17 * * * root date >> /tmp/date