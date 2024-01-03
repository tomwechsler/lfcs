#Shows the defaults
useradd -D

#Change the default shell
sudo vim /etc/default/useradd

#Shows the defaults again
useradd -D

#Some other defaults
sudo vim /etc/login.defs

#Nothing
grep CREATE_HOME /etc/login.defs

man 5 login.defs
/CREATE

#We set the home directory
sudo vim /etc/login.defs
CREATE_HOME yes

#Create a new user
sudo useradd user3

#Last command beginning with tai
!tai

#List the home directories
ls /home