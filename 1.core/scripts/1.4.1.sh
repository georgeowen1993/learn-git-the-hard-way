#!/bin/bash
rm -rf 1.4.1
mkdir 1.4.1o
cd 1.4.1
git init
echo newfile > file1
git add file1
git commit -am 'new file1'
git status
git branch newfeature                      # Create the 'newfeature' branch
git status                                 # You are still on the master branch!
git branch                                 # git branch shows the branches in your repository
echo Line_master1 >> file1                 # add Line_master1
git commit -am 'master change'             # add, commit and message
git log --decorate --graph --oneline       # graphical view of this branch
git log --decorate --graph --oneline --all # graphical view of all branches
git checkout newfeature                    # Check out the newfeature branch
cat file1                                  # This has been checked out at the 'branch point'
echo Line_feature1 >> file1                # add Line_feature1
git commit -am 'feature change'            # add, commit and message
git log --decorate --graph --oneline --all # graphical view of all branches
git checkout master                        # checkout the master branch
cat file1                                  # The feature change is not there
git log
git checkout
git status
