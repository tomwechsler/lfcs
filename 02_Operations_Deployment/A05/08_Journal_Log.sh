#Working on unbuntu1

#Display the system journal using 'journalctl'
sudo journalctl

#Display the journal for the 'ssh' unit
sudo journalctl --unit ssh

#Display the journal for the 'ssh' unit since today
sudo journalctl --unit ssh --since today

#Search for the word 'storage' in the '/etc/systemd/journald.conf' file
grep -i storage /etc/systemd/journald.conf

#Display the manual page for the 'journald.conf' file
man 5 journald.conf

#Replace the line '#Storage=auto' with 'Storage=persistent' in the '/etc/systemd/journald.conf' file
sudo sed -i 's/#Storage=auto/Storage=persistent/' /etc/systemd/journald.conf

#Search for the word 'storage' in the '/etc/systemd/journald.conf' file again
grep -i storage /etc/systemd/journald.conf

#Restart the 'systemd-journald' service
sudo systemctl restart systemd-journald