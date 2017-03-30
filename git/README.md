## Common git commands

### Create ssh key so you can connect to github
- Create key on your machine (it will create .ssh directory)
```
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

- Copy content of the following file and as a new ssh key in github settings
```
.ssh/id_rsa.pub
```

- Edit user and email in git global file
```
git config --global --edit
```

- Edit commit message and commiter in last commit
```
git commit --amend --reset-author
```

- Set global user
```
git config --global user.name "your_name"
```

- Set global email
```
git config --global user.email "your_email"
```

### Repositories
- Create new repository (it will create .git directory)
```
git init
```

- To push your local repository to github create empty repository on github (without README.md file) and run the following
```
git remote add origin http://github.com/your_remote/repository
git push origin master
```

- Clone existing lukasztecza/tools repository
```
git clone https://github.com/lukasztecza/tools.git
```

### Branches
- Create brnach1 from current branch (for instance from master while branch1 does not exist yet)
```
git checkout -b branch1
```

- Checkout to branch2 (note that branch2 has to be existing branch)
```
git checkout branch2
```

- Checkout to v1.2.3 tag of master (while on master branch)
```
git checkout tags/v1.2.3 
```

- Checkout to remote branch3 (and create it)
```
git checkout --track origin/branch3
```

- Show branches (local and remote)
```
git branch -a
```

- Delete branch1
```
git branch -d branch1
```

### Committing changes
- Check what files have been changed since last commit
```
git status
```

- Check the difference in content of files since last commit
```
git diff
```

- Check the difference between master and branch1
```
git diff master branch1
```

- Drop changes made to file1 file (before adding or commiting, note file1 is not a branch)
```
git checkout file1
```

- Add file1.txt for future commit
```
git add file1
```

- Add all files from dir1/dir2 direcotry
```
git add dir1/dir2
```

- Add all files in current directory
```
git add .
```

- Undo adding files from dir1/dir2 directory
```
git reset dir1/dir2
```

- Commit added files with 'my message'
```
git commit -m 'my message'
```

- Show history of commits
```
git log
```

- Revert commit A1A1A1A1A1A1A1A1A1
```
git revert A1A1A1A1A1A1A1A1A1
```

### Pushing or pulling changes to/from remote repository
- Send commited changes in branch1 to remote repository
```
git push --set-upstream origin branch1
```

- Get latest changes of your branch from remote repository
```
git pull
```

- Merge branch2 to branch1 (currently on branch1)
```
git merge branch2
```

- Make your local master the same as the remote one (after breaking it somehow)
```
git fetch origin
git reset --hard origin/master
```

### Saving changes without committing
- Store current changes (you can get it back later)
```
git stash
```

- Show stored changes indexes
```
git stash list
```

- Get stored changes from index 0
```
git stash pop
```

### Creating releases
- To create a release after checking out to a tags/1.5.5 and creating new branch5, push it to github and go to releases, create new release, specify new tag 1.5.6 and point to branch5, set title and description
