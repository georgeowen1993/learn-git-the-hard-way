#infiles = $(find . -name '*mermaid')
#outfiles = $(find . -name '*mermaid' | sed 's/mermaid/mermaid.png/g')
#
#.PHONY: diagrams
#
#
#diagrams: $(outfiles)
#	@echo $(infiles)
#	@echo $(outfiles)
#
#$(outfiles): $(infiles)
#	mermaid $@
#.PHONY: all
#all: *.png
*.png: *.mermaid
	mermaid $<
