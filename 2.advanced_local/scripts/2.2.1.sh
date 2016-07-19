#!/bin/bash
rm -rf 2.2.1.gitrepo
mkdir 2.2.1.gitrepo
cd 2.2.1.gitrepo
git init
echo 'This is file1' > file1
echo 'This is file2' > file2
git add file1 file2
git commit -am 'files added'
cat > file1 << END
Good change
This is file1
Experimental change
END
cat > file2 << END
All good
This is file2
END
