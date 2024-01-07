#Working on ubuntu1

#Append a line to the '/etc/pam.d/common-auth' file that configures PAM to require the 'pam_tally2.so' module, fail on error, deny access after 6 failed attempts, and unlock after 300 seconds
echo "auth required pam_tally2.so onerr=fail deny=6 unlock_time=300" | sudo tee -a /etc/pam.d/common-auth

#Switch to the 'alf' user and enter the wrong password
su - alf

#Display the login failure count for the 'alf' user
sudo pam_tally2 -u alf

#Display lines containing 'requisite' from the '/etc/pam.d/common-auth' file
grep requisite /etc/pam.d/common-auth

#Delete the last line of the '/etc/pam.d/common-auth' file
sudo sed -i '$d' /etc/pam.d/common-auth

#Insert a line at the beginning of the '/etc/pam.d/common-auth' file that configures PAM to require the 'pam_tally2.so' module, fail on error, deny access after 6 failed attempts, and unlock after 300 seconds
sudo sed -i "1i auth required pam_tally2.so onerr=fail deny=6 unlock_time=300" /etc/pam.d/common-auth

#Wrong passwod
su - alf

sudo pam_tally2 -u alf

#Correct password resets the counter
su - alf

sudo pam_tally2 -u alf

#Wrong passwod
su - alf

sudo pam_tally2 -u alf

sudo pam_tally2 -u alf -r

sudo pam_tally2 -u alf