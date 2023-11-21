#gzip / gunzip
#bzip2 / bunzip2
#xz -z / xz -d (unxz)

#tar -czf (gzip)
#tar -cjf (bzip2)
#tar -cJf (xz)

#Let's work with the etc.tar file
ls -lh

#Compress the 'etc.tar' file using the 'gzip' utility
gzip etc.tar

#List the files in the current directory in long format and with sizes in human-readable format
ls -lh

#Decompress the 'etc.tar.gz' file using the 'gunzip' utility
gunzip etc.tar.gz

#List the files in the current directory in long format and with sizes in human-readable format
ls -lh

#Compress the 'etc.tar' file using the 'bzip2' utility
bzip2 etc.tar

#List the files in the current directory in long format and with sizes in human-readable format
ls -lh

#Decompress the 'etc.tar.bz2' file using the 'bunzip2' utility
bunzip2 etc.tar.bz2

#Compress the 'etc.tar' file using the 'xz' utility
xz -z etc.tar

#List the files in the current directory in long format and with sizes in human-readable format
ls -lh

#Decompress the 'etc.tar.xz' file using the 'unxz' utility
unxz etc.tar.xz

#List the files in the current directory in long format and with sizes in human-readable format
ls -lh