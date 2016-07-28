CHAPTERS=$(shell ls -d [1-9]*)
OUTPUT_DIR=$(shell pwd)/output

include makefiles/Makefile.constants

.PHONY: chapters $(CHAPTERS)
chapters: $(CHAPTERS) 

$(CHAPTERS):
	@echo $@
	@echo $(CHAPTERS)
	$(MAKE) -C $@

clean:
	rm $(OUTPUT_DIR)/*
