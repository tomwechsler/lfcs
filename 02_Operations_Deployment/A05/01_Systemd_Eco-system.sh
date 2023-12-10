#Working on unbuntu1

#System Uniformity

#Set the system hostname to 'ubuntu01' using 'hostnamectl'
sudo hostnamectl set-hostname ubuntu01

#Display the contents of the '/etc/hostname' file, which should now contain 'ubuntu01'
cat /etc/hostname

#Set the system timezone to 'Europe/Zurich' using 'timedatectl'
sudo timedatectl set-timezone 'Europe/Zurich'

#List the details of the '/etc/localtime' file, which is a symbolic link to the file representing the current timezone
ls -l /etc/localtime

#Set the system locale to 'de_CH.UTF-8' using 'localectl'. This sets the language to German as used in Switzerland, and the character encoding to UTF-8.
sudo localectl set-locale LANG=de_CH.UTF-8