#Working on ubuntu1

#Create a git user
sudo useradd -m -s /bin/bash git

#Set the password
echo 'git:[P@ssw0rd]' | sudo chpasswd

#Create a SSH key pair
ssh-keygen -N "" -f /home/vagrant/.ssh/id_rsa

#Copy the public key to the git user
ssh-copy-id git@localhost

#SSH to the git user
ssh git@localhost

#Create a git repository
mkdir -p git/project1.git

#Change the directory to the git repository
cd git/project1.git

#List the files
ls -la

#Initialize the git repository (--bare just create the database)
git init --bare

#Leave the SSH session
exit

#Clone the git repository
git clone git@localhost:/home/git/git/project1

#Change the directory to the git repository
cd project1

#Create a file
echo "Hello World" > hello.sh

#Add the file to the git repository
git add .

#Commit the file
git commit -m "First script version"

#Push the file to the git repository
git push
