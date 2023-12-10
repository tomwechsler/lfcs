#Working on unbuntu1

#Not all infos are displayed
systemctl status cron

systemctl status cron.service

#It ist easier not to type sudo everytime
sudo -i

#Display the status of the 'cron' service
systemctl status cron

#Disable the 'cron' service, preventing it from starting at boot
systemctl disable cron

#Display the status of the 'cron' service again
systemctl status cron

#Stop the 'cron' service, stopping it immediately
systemctl stop cron

#Display the status of the 'cron' service again
systemctl status cron

#Enable and start the 'cron' service immediately
systemctl enable --now cron

#Display the status of the 'cron' service again
systemctl status cron

#Disable and stop the 'cron' service immediately
systemctl disable --now cron

#Mask and stop the 'cron' service immediately, preventing it from being started manually or by another service
systemctl mask --now cron

#Try to start the 'cron' service, which will fail because it is masked
systemctl start cron

#Unmask and start the 'cron' service immediately
systemctl unmask --now cron

#Start the 'cron' service
systemctl start cron

#Display the unit file for the 'cron' service
systemctl cat cron

#Edit the unit file for the 'cron' service
systemctl edit cron --full

#Change the description: Job Scheduler for regular tasks

systemctl daemon-reload

systemctl status cron



