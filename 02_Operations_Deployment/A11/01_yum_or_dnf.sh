#Working on rocky

#Display the configured software repositories for YUM (Yellowdog Updater, Modified)
yum repolist

#Display the configured software repositories for DNF (Dandified YUM)
dnf repolist

#List the details of the YUM binary file
ls -l /bin/yum

#List the details of the DNF binary file
ls -l /bin/dnf

#Display the version of dnf
dnf --version