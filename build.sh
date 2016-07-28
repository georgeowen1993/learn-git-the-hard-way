#!/bin/bash
set -e
set -x
for f in $(find [0-9]* -maxdepth 0 -type d)
do
	pushd $f
	#asciidoctor -T toc $f.asciidoc
	asciidoctor $f.asciidoc
	popd
done
