#!/bin/bash
rm -rf 2.6.1.gitrepo
mkdir -p 2.6.1.gitrepo
cd 2.6.1.gitrepo
git init
touch projectfile
git add projectfile
for ((i=1;i<=100;i++)); do echo $i >> projectfile; git commit -am "A$i"; done
git log

