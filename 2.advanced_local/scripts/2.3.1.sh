#!/bin/bash
rm -rf 2.3.1.gitrepo
mkdir 2.3.1.gitrepo
cd 2.3.1.gitrepo
git init
echo first commit > file1
git add file1
git commit -am file1
echo second commit >> file1
git commit -am file1.1
git log
