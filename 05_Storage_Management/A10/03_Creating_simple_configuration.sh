#Working on ubuntu1

#Display the man page for the 'targets' configuration file format (search for examples)
man 5 targets.conf

#Open the '/etc/tgt/conf.d/my.conf' file in the vim text editor
sudo vim /etc/tgt/conf.d/my.conf

<target iqn.2024-02.com.example:www-lun>
    backing-store /dev/vg1/lv1

    # if no "incominguser" is specified, it is not used
    #incominguser backup secretpass12

    # defaults to ALL if no "initiator-address" is specified
    #initiator-address 192.168.1.2
</target>

#Restart the 'tgt' service to apply the changes
sudo systemctl restart tgt

#Display the status of the 'tgt' service
sudo systemctl status tgt

#Display all iSCSI targets
sudo tgtadm --mode target --op show