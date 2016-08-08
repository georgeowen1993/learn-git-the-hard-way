#!/bin/bash
rm -rf 1.2.1.gitrepo
mkdir 1.2.1.gitrepo
cd 1.2.1.gitrepo
git init
cd .git
ls
# config
# description
# HEAD
# hooks
# info
# objects
# refs
cd ..
cat HEAD
# ref: refs/heads/master
cat config
# [core]
# 	repositoryformatversion = 0
# 	filemode = true
# 	bare = false
# 	logallrefupdates = true
# 	ignorecase = true
# 	precomposeunicode = true
cd ..
git log
# fatal: bad default revision 'HEAD'
ls .git/refs/heads/master
# ls: .git/refs/heads/master: No such file or directory
git status
# On branch master
#
# Initial commit
#
# nothing to commit (create/copy files and use "git add" to track)
touch mycode.py
git status
# On branch master
#
# Initial commit
#
# Untracked files:
#   (use "git add <file>..." to include in what will be committed)
#
# 	mycode.c
git add mycode.py
git status
# On branch master
#
# Initial commit
#
# Changes to be committed:
#   (use "git rm --cached <file>..." to unstage)
#
# 	new file:   mycode.py
git log
# fatal: bad default revision 'HEAD'
git commit
git log
# commit e5fb099e952e8754b54f9b99be93d62e3fce0fca
# Author: ianmiell <ian.miell@gmail.com>
# Date:   Tue Apr 26 07:46:58 2016 +0100
#
#     Some message
git diff
git status
git commit -a
git status
git log
