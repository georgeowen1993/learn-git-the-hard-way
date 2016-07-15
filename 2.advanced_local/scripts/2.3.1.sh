#!/bin/bash
rm -rf 2.3.1
mkdir 2.3.1
cd 2.3.1
git init
echo first commit > file1
git add file1
git commit -am file1
echo second commit >> file1
git commit -am file1.1
git log
