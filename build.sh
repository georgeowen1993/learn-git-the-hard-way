#!/bin/bash
set -e
set -x
for d in $(find . -name diagrams)
do
	pushd $d
	for f in $(ls -1 *mermaid)
	do
		make
	done
	popd
done
for f in $(find [0-9]* -maxdepth 0 -type d)
do
	pushd $f
	#asciidoctor -T toc $f.asciidoc
	asciidoctor $f.asciidoc
	popd
done
