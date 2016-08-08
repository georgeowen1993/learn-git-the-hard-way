#!/bin/bash
rm -rf 2.1.1.gitrepo
mkdir 2.1.1.gitrepo
cd 2.1.1.gitrepo
git init
echo 'Some content' > file1
git add file1
git commit -am initial
echo 'Some changes I am not sure about' >> file1
