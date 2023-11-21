#Easy to measure time without typing sudo
sudo -i

#Create a tar archive named 'etc.tar' containing the '/etc' directory, and measure the time it takes
time tar -cf etc.tar /etc

#Create a gzipped tar archive named 'etc.tar.gz' containing the '/etc' directory, and measure the time it takes
time tar -czf etc.tar.gz /etc

#Create a bzipped tar archive named 'etc.tar.bz2' containing the '/etc' directory, and measure the time it takes
time tar -cjf etc.tar.bz2 /etc

#Create an xzipped tar archive named 'etc.tar.xz' containing the '/etc' directory, and measure the time it takes
time tar -cJf etc.tar.xz /etc

#List the files in the current directory in long format and with sizes in human-readable format
ls -lh

#Create an xzipped tar archive named 'doc.tar.xz' containing the '/usr/share/doc' directory, and redirect both stdout and stderr to '/dev/null' to suppress output. Run this command in the background.
tar -cJf doc.tar.xz /usr/share/doc &> /dev/null &

#Display the current running processes
ps