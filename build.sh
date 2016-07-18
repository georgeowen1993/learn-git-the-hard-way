#!/bin/bash
set -e
for f in $(find * -maxdepth 1 -type d)
do
	pushd $f
	asciidoctor $f.asciidoc
	popd
done
