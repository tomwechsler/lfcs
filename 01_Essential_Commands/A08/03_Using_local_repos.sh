#Working on ubuntu1

#Back to home
cd

#Create a new directory
mkdir myfirstproject

#Go into the directory
cd myfirstproject

#List the content
ls -a

#Initialize the git repo
git init

#List the content
ls -a

#Git status
git status

#Create a new file
echo "This is my first file" > myfile

#Git status
git status

#Add the file to the staging area
git add .

#Git status
git status

#Commit the file
git commit -m "First commit"

#Git status
git status

#Git show
git show

#Some new content
echo "This is new text" > myfile

#Stage and commit
git commit -a -m "Second commit"

#Cat the file
cat myfile

#Git log
git log

git log --oneline

#Revert to the first commit
git revert --no-commit -m1 <commit_id>..HEAD

#Git status
git status

#Cat the file
cat myfile

#Add new text
echo "This is new text" >> myfile

#Stage and commit
git commit -a -m "corrected data"

#Cat the file
!cat