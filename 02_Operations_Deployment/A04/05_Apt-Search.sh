#Working on ubuntu1

#Search for packages whose names or descriptions contain 'apache'
apt search apache

#Search for packages whose names or descriptions contain 'apache' using 'apt-cache'
apt-cache search apache

#Count the number of packages whose names or descriptions contain 'apache'
apt-cache search apache | wc -l

#Search for packages whose names contain 'apache'
apt search --names-only apache

#Count the number of packages whose names contain 'apache'
apt search --names-only apache | wc -l

#Count the number of packages whose names start with 'apache'
apt search --names-only '^apache' | wc -l

#List the packages whose names start with 'apache'
apt search --names-only '^apache'

#Show detailed information about the 'apache2' package
apt show apache2