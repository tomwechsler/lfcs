#Working on unbuntu1

#Loop over the names 'joe', 'sam', and 'pete'
for user in joe sam pete ; do 
    #For each name, create a new user with that name. The '-m' option creates a home directory for the user, the '-s' option sets the user's shell to '/bin/bash', and the '-p' option sets the user's password to the output of 'pwgen.sh Password123?'.
    sudo useradd -m -s /bin/bash -p $(pwgen.sh Password123?) $user 
done

#Display the last 3 lines of the '/etc/passwd' file, which contains user account information
tail -n3 /etc/passwd

#Display the last 3 lines of the '/etc/shadow' file, which contains encrypted user password information
sudo tail -n3 /etc/shadow

#Switch to the 'joe' user
su - joe

#Exit the 'joe' user's shell, returning to the previous user's shell
exit