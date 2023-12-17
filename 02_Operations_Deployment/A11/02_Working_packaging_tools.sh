#Working on rocky

#List all packages that match the pattern 'tree*'
dnf list tree*

#List all packages that match the pattern 'bash*'
dnf list bash*

#Find which package provides the 'lvscan' binary
dnf provides "*bin/lvscan"

#Install the 'tree' package
sudo dnf install -y tree

#Install the 'httpd' package (Apache HTTP Server)
sudo dnf install httpd

#List all DNF transactions
dnf history list

#Undo the transaction with ID 6
sudo dnf history undo 6

#List all DNF transactions again to confirm the changes
dnf history list

#Undo the transaction with ID 7
sudo dnf history undo 7