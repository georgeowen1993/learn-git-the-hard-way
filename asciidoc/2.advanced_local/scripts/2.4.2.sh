#!/bin/bash

cd 2.4.1.gitrepo
git branch experimental
git checkout experimental
ex -sc '1i|crazy change' -cx file1  # Magic to insert before the first line
cat file1
git commit -am crazy
echo more sensible change >> file1
cat file1
git commit -am sensible
