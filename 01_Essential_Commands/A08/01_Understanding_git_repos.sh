#Working on ubuntu1

hostanmectl

#Update apt cache
sudo apt update

#Install git
sudo apt install git -y

#Back to home
cd ~

#Clone the repo
git clone https://github.com/tomwechsler/lfcs

#Change to the repo directory
cd lfcs

#Change to the all-courses directory
cd all-courses

#List the files
ls -l

cd ..

#The git status
git status

#Git branch (local)
git branch

#All the branches
git branch -a

#Git pull
git pull