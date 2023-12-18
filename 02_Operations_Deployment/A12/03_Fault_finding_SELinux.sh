#Working on rocky

#Switch to the root user
sudo -i

#List the security context of the /etc/shadow file
ls -Z /etc/shadow

#List the security context of all running processes
ps -Z

#List the security context of the sshd process
ps -Zp $(pgrep sshd)

#Change the security context of the /etc/shadow file to 'admin_home_t'
chcon -t admin_home_t /etc/shadow

#List the security context of the /etc/shadow file again to confirm the changes
ls -Z /etc/shadow

#Display the password aging information for the 'vagrant' user
chage -l vagrant

#Display the current SELinux mode (Enforcing, Permissive, or Disabled)
getenforce

#Temporarily change the SELinux mode to Permissive (errors are logged but not prevented)
setenforce Permissive

#Display the password aging information for the 'vagrant' user again
chage -l vagrant

#Search the audit logs for AVC (Access Vector Cache) messages from the recent past
ausearch -m avc -ts recent

#Display the last 10 lines of the system log
tail /var/log/messages

#Display a human-readable report for the specified SELinux alert
sealert -l 2e1b1e9e-4b9e-4b9e-9b9e-9b9e9b9e9b9e

#Restore the default SELinux security context for the /etc/shadow file
/sbin/restorecon -v /etc/shadow

#Temporarily change the SELinux mode back to Enforcing (errors are logged and prevented)
setenforce Enforcing

#Run the last chage command
!chage