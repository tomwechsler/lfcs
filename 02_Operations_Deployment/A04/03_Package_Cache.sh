#Working on ubuntu1

#List the details of the 'pkgcache.bin' file in the '/var/cache/apt' directory. This file is a package metadata cache used by 'apt'.
ls -l /var/cache/apt/pkgcache.bin

#Update the package lists for upgrades and new package installations using 'apt-get'
sudo apt-get update

#List the details of the 'pkgcache.bin' file again. After running 'apt-get update', this file should have been updated.
ls -l /var/cache/apt/pkgcache.bin