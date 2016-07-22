DIAGRAMS=$(find . -name '*.mermaid')
ASCIIDOCS=$(find . -name '*.asciidoc')


%.mermaid: %.png
	mermaid $@
