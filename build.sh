#!/bin/bash
set -e
set -x
for f in $(find * -maxdepth 0 -type d)
do
	pushd $f
	asciidoctor $f.asciidoc
	popd
done
