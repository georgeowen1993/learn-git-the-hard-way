#!/bin/bash
rm -rf git-bisect && mkdir -p git-bisect && cd git-bisect
git init
touch projectfile
git add projectfile
for ((i=1;i<=100;i++)); do echo $i >> projectfile; git commit -am "A$i"; done
git log

