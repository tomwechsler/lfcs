#Woking on ubuntu1

#The current umask value
umask

#Grep the umask setting in the '.profile' file
grep '#umask' .profile

#Uncomment the umask setting
sed -i '/^#umask/s/^#//' .profile ##uncomment the umask setting

#Comment the umask setting
sed -i '/^umask/s/^/#/' .profile ##to comment the line