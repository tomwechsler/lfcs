#Working on ubuntu1

#Display the system's journal for 'web.socket' unit
sudo journalctl -u web.socket

#Display the system's journal for 'web.service' unit
sudo journalctl -u web.service

#Display the system's journal for 'touchfile.timer' unit
sudo journalctl -u touchfile.timer

#Display the system's journal for 'touchfile.service' unit
sudo journalctl -u touchfile.service

#Display the system's journal for 'ssh' unit
sudo journalctl -u ssh

#Display the system's journal for 'ssh' unit and grep for 'vagrant'
sudo journalctl -u ssh -g vagrant

#Display the status of 'ssh' unit
systemctl status ssh

#Display the system uptime
uptime