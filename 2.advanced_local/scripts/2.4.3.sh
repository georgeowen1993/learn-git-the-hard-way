#!/bin/bash
rm -rf 2.4.3.gitrepo
mkdir 2.4.3.gitrepo
cd 2.4.3.gitrepo
git init
echo change1 > file1
git add file1
git commit -am change1
echo change2 >> file1
git commit -am change2
git log
git branch experimental
git checkout experimental
echo crazy change >> file1
cat file1
git commit -am crazy
echo more sensible change >> file1
cat file1
git commit -am sensible
git log
git checkout master
git cherry-pick ID
git log
