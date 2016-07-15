#!/bin/bash
rm -rf 2.1.1
mkdir 2.1.1
cd 2.1.1
git init
echo 'Some content' > file1
git add file1
git commit -am initial
echo 'Some changes I am not sure about' >> file1
