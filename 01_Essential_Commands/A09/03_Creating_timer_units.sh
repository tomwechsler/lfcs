#Working on ubuntu1

#List all active timer units
systemctl list-timers

#Display the content of touchfile.service file
cat touchfile.service

#Edit the touchfile.service unit file with an editor
sudo systemctl edit --full --force touchfile.service

#Display the content of touchfile.timer file
cat touchfile.timer

#Edit the touchfile.timer unit file with an editor
sudo systemctl edit --full --force touchfile.timer

#Enable and start the touchfile.timer unit
sudo systemctl enable --now touchfile.timer

#List all active timer units again to confirm the changes
systemctl list-timers