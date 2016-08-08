MAKEFILE_DIR:=$(dir $(CURDIR)/$(word $(words $(MAKEFILE_LIST)),$(MAKEFILE_LIST)))
MAKEFILE_BASENAME:=$(shell basename $(MAKEFILE_DIR))

include ../../makefiles/Makefile.constants

CHAPTER_SOURCE:=$(MAKEFILE_DIR)/$(MAKEFILE_BASENAME).asciidoc
CHAPTER_SOURCES:=$(shell ls $(MAKEFILE_DIR)/*.asciidoc | grep -v $(CHAPTER_SOURCE))
CHAPTER_TARGET:=$(OUTPUT_DIR)/$(MAKEFILE_BASENAME).html

all: diagrams 

.PHONY: diagrams
diagrams:
	$(MAKE) -C diagrams

$(CHAPTER_TARGET): $(CHAPTER_SOURCE)

$(CHAPTER_SOURCE): $(CHAPTER_SOURCES)
	# touch the chapter source file to ensure it doesn't get rebuilt every time
	touch $(CHAPTER_SOURCE)
	# build the chapter source
	asciidoctor -n -D $(OUTPUT_DIR) $(CHAPTER_SOURCE)
