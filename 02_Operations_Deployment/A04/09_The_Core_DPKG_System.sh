#Working on ubuntu1

#List all installed packages using 'dpkg'
dpkg -l

#List all files installed to your system from the 'postfix' package
dpkg -L postfix

#Search for the package that installed the '/etc/xattr.conf' file
dpkg -S /etc/xattr.conf

#Reconfigure the 'postfix' package using 'dpkg-reconfigure'. This will prompt you to answer a series of questions to reconfigure the package.
sudo dpkg-reconfigure postfix

#Reload the 'postfix' service configuration using 'systemctl'
sudo systemctl reload postfix

#Display listening sockets using 'ss'. The '-n' option shows numerical addresses instead of trying to resolve names, the '-t' option shows TCP sockets, and the '-l' option shows listening sockets.
ss -ntl