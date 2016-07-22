#!/bin/bash
set -e
set -x
for d in $(find . -name diagrams)
do
	pushd $d
	for f in $(ls -1 *mermaid)
	do
		mermaid $f
	done
	popd
done
for f in $(find * -maxdepth 0 -type d)
do
	pushd $f
	#asciidoctor -T toc $f.asciidoc
	asciidoctor $f.asciidoc
	popd
done
