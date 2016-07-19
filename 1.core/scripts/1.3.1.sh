#!/bin/bash
rm -rf 1.3.1.gitrepo
mkdir 1.3.1.gitrepo
cd 1.3.1.gitrepo
git clone https://github.com/ianmiell/shutit
cd shutit
ls .git
git log                           # default history of this repo
git log --oneline                 # more concise history of this repo
git log --oneline --graph         # graphical view of the history of this repo
cd ..                             # exit this repo's root folder
git clone shutit cloned_shutit    # clone the repository
cd cloned_shutit                  # enter the repository
ls .git                           # we have a copy of the repository's history
rm -rf *                          # delete all the files!
ls .git                           # The .git folder is still there
git status        # reports that we have deleted files in working tree/directory
git add .         # added to staging/index area
git status        # reports that . Note there's a helpful message about resetting now! Let's explore that.
git reset --mixed # the default. out of staging/index area, but still deleted in the working directory!
git status        # we are back to 'deleted in the working directory' with a message about being ready to add
rm -rf *          # delete all the files again
git add .         # added to staging/index area ready to commit again
git reset --hard  # does a re-check out of the whole repository, discarding working directory and changes to the index
git status        # we now have a consistent state between 1 (local changes) and 3 (committed)
