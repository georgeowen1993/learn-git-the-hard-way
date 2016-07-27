MAKE=make
CHAPTERS=$(shell ls -d [1-9]*)

.PHONY: chapters $(CHAPTERS)
chapters: $(CHAPTERS)

$(CHAPTERS):
	$(MAKE) -C $@

