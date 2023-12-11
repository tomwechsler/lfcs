#Working on unbuntu1

#List the details of the files in the '/var/log' directory
ls -l /var/log

#Display the contents of the '/var/log/syslog' file using 'less', which allows for scrolling and searching
sudo less /var/log/syslog

#Display the last 10 lines of the '/var/log/syslog' file
sudo tail /var/log/syslog

#Display the last 10 lines of the '/var/log/syslog' file, and then output appended data as the file grows
sudo tail -f /var/log/syslog

#Display the contents of the '/etc/rsyslog.conf' file
cat /etc/rsyslog.conf

#List the files in the '/etc/rsyslog.d' directory
ls /etc/rsyslog.d