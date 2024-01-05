#Woking on ubuntu1

#Display the shadow password database entry for the current user
sudo getent shadow $USER

#Display the second field (the password field) of the shadow password database entry for the current user
sudo getent shadow $USER | cut -f2 -d:

#Display the second field of the password field (the algorithm field) of the shadow password database entry for the current user
sudo getent shadow $USER | cut -f2 -d: | awk -F$ '{ print $2 }'

#Display the third field of the password field (the salt field) of the shadow password database entry for the current user
sudo getent shadow $USER | cut -f2 -d: | awk -F$ '{ print $3 }'

#Display the fourth field of the password field (the hash field) of the shadow password database entry for the current user
sudo getent shadow $USER | cut -f2 -d: | awk -F$ '{ print $4 }'

#Display the algorithm, salt, and hash fields of the password field of the shadow password database entry for the current user, with labels
sudo getent shadow $USER | cut -f2 -d: | awk -F$ '{ print "ALG:\t" $2 "\nSALT:\t" $3 "\nHASH:\t" $4 }'