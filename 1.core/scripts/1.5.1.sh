#!/bin/bash
rm -rf 1.5.1.gitrepo
mkdir 1.5.1.gitrepo
cd 1.5.1.gitrepo
git init
echo A > file1
git add file1
git commit -am 'A'
echo B >> file1
git commit -am 'B'
echo C >> file1
git commit -am 'C'
git branch experimental
git checkout experimental
git branch
echo E >> file1
git commit -am 'E'
echo H >> file1
git commit -am 'H'
git checkout master
git branch
echo D >> file1
git commit -am 'D'
echo F >> file1
git commit -am 'F'
echo G >> file1
git commit -am 'G'
git merge experimental
# Auto-merging file1
# CONFLICT (content): Merge conflict in file1
# Automatic merge failed; fix conflicts and then commit the result.
cat file1
EDIT FILE
git commit -am 'merged experimental in'
git log --all --oneline --graph --decorate
# *   69441b0 (HEAD, master) merged
# |\  
# | * b3d54fe (experimental) H
# | * 4a013db E
# * | d9d3722 G
# * | bf0fc3e F
# * | ccedaee D
# |/  
# * 8835191 C
# * f9e5b4f B
# * 38471fe A

