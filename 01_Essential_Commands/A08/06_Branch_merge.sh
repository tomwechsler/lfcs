#Working on ubuntu1

#Change directory to project1
cd project1

#Display the state of the working directory
git status

#List all local branches in the current repository
git branch

#List all branches in the current repository
git branch -a

#Create a new branch named 'dev' and switch to it
git checkout -b dev

#List all branches again to confirm 'dev' has been created
git branch -a

#Open 'hello.sh' in vim editor
vim hello.sh
#!/bin/bash

#Commit the changes with a message "Added shebang"
git commit -am "Added shebang"

#Display the state of the working directory after commit
git status

#Display the content of 'hello.sh'
cat hello.sh

#Switch to 'master' branch
git checkout master

#Display the content of 'hello.sh' in 'master' branch
cat hello.sh

#Switch back to 'dev' branch
git checkout dev

#Display the content of 'hello.sh' in 'dev' branch
cat hello.sh

#Push 'dev' branch to the remote repository
git push origin dev

#List all local branches
git branch

#List all branches
git branch -a

#Switch to 'master' branch
git checkout master

#Merge 'dev' branch into 'master'
git merge dev

#Display the content of 'hello.sh' after merge
cat hello.sh

#Display the state of the working directory after merge
git status

#Show the commits on the current branch
git show

#Push changes to the remote repository
git push

#Tag the current commit with 'v1.1'
git tag v1.1

#Push the 'v1.1' tag to the remote repository
git push origin v1.1