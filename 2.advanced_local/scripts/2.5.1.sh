#!/bin/bash

rm -rf 2.5.1
mkdir 2.5.1
cd 2.5.1
git init
echo A > file1
git add file1
git commit -am A
echo B >> file1
git commit -am B
echo C >> file1
git commit -am C

git checkout -b feature1
echo D >> file1
git commit -am D

git checkout master
echo E >> file1
git commit -am E
echo F >> file1
git commit -am F

git log --all --decorate --graph
