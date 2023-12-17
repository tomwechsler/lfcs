#Working on rocky

#Update all packages to their latest versions
sudo dnf update

#Check for available package updates
dnf check-update

#Check for available security updates
dnf check-update --security

#Display information about available updates
dnf updateinfo

#Display information about available security updates
dnf updateinfo --security

#Display information about available updates with a security severity of 'Important'
dnf updateinfo --sec-severity Important

#Display detailed information about available updates with a security severity of 'Important'
dnf updateinfo info --sec-severity Important

#Update all packages with a security severity of 'Important' to their latest versions
sudo dnf update --sec-severity Important