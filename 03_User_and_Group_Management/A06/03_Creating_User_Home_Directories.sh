#Working on ubuntu1

#Lets remove the CREATE_HOME
vim /etc/login.defs

#Create a new user named 'alf'
sudo useradd alf

#Set the password for the 'alf' user to 'P@ssw0rd'
echo "alf:P@ssw0rd" | sudo chpasswd

#Switch to the 'alf' user
su - alf

#Display the string "session optional pam_mkhomedir.so"
echo "session optional pam_mkhomedir.so"

#Append the string "session optional pam_mkhomedir.so" to the end of the /etc/pam.d/common-session file
echo "session optional pam_mkhomedir.so" | sudo tee -a /etc/pam.d/common-session

#cat + ESC . (dot) to repeat the last command
cat /etc/pam.d/common-session

#Switch to the 'alf' user again
su - alf

#Exit the current shell
exit