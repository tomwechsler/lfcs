#Working on ubuntu1

#Open the '/etc/tgt/conf.d/my.conf' file in the vim text editor
sudo vim /etc/tgt/conf.d/my.conf

<target iqn.2023.12.com.example:www-lun>
             backing-store /dev/vg1/lv1

             # if no "incominguser" is specified, it is not used
             incominguser fred secret

             # defaults to ALL if no "initiator-address" is specified
             initiator-address 192.168.56.102
</target>

#Save and exit

#Restart the 'tgt' service to apply the changes
sudo systemctl restart tgt

#Display all iSCSI targets
sudo tgtadm --mode target --op show