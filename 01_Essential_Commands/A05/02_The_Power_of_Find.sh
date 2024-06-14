#Find all files in the current directory (and its subdirectories) with the extension '.html'
find -type f -name '*.html'

#Find all files in the '/usr/share/doc' directory (and its subdirectories) with the extension '.html'
find /usr/share/doc -type f -name '*.html'

#We copy the result from find
find /usr/share/doc -type f -name '*.html' -exec cp {} ~/links/ \;

#Find all files in the current directory (and its subdirectories) with the extension '.html'
find -type f -name '*.html'

#We can also delete with find
find -type f -name '*.html' -delete

#Find all files in the current directory (and its subdirectories) with the extension '.html'
find -type f -name '*.html'

find / -maxdepth 1 -type l

#Let's edit a line in hosts
sudo vim /etc/hosts

#Last modified exactly 5 minutes ago
find /etc -mmin 5 2>/dev/null

#Last modified more than 5 minutes ago
find /etc -mmin +5 2>/dev/null

#Last modified less than 5 minutes ago
find /etc -mmin -5 -type f 2>/dev/null