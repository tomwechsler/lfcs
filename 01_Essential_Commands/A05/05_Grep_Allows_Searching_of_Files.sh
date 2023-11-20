#global regular expression print > grep

#Count the number of lines in the /etc/ssh/sshd_config file
wc -l /etc/ssh/sshd_config

#Find lines in the /etc/ssh/sshd_config file that start with '#'
grep '^#' /etc/ssh/sshd_config

#Find lines in the /etc/ssh/sshd_config file that do not start with '#'
grep -v '^#' /etc/ssh/sshd_config

#Find lines in the /etc/ssh/sshd_config file that are not empty and do not start with '#'
grep -vE '^(#|$)' /etc/ssh/sshd_config

#Find lines in the /etc/ssh/sshd_config file that contain the word 'password'
grep password /etc/ssh/sshd_config

#Find lines in the /etc/ssh/sshd_config file that contain the word 'password', ignoring case
grep -i password /etc/ssh/sshd_config

#Find lines in the /etc/ssh/sshd_config file that start with the word 'password', ignoring case
grep -i '^password' /etc/ssh/sshd_config

#Find lines in the /etc/ssh/sshd_config file that end with the word 'yes'
grep 'yes$' /etc/ssh/sshd_config

#Find lines in the /etc/ssh/sshd_config file that start with '#' and end with the word 'yes'
grep '^#.*yes$' /etc/ssh/sshd_config

#Find lines in the /etc/ssh/sshd_config file that do not start with '#' and end with the word 'yes', ignoring case
grep -i '^[^#].*yes$' /etc/ssh/sshd_config