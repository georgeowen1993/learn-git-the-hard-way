#!/bin/bash
rm -rf 2.4.1.gitrepo
mkdir 2.4.1.gitrepo
cd 2.4.1.gitrepo
git init
echo change1 > file1
git add file1
git commit -am change1
echo change2 >> file1
git commit -am change2
git log
