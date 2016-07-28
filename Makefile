CHAPTERS=$(shell ls -d [1-9]*)
OUTPUT_DIR=$(shell pwd)/output

include makefiles/Makefile.constants

.PHONY: chapters $(CHAPTERS) deploy
chapters: $(CHAPTERS) 

$(CHAPTERS):
	@echo $@
	@echo $(CHAPTERS)
	$(MAKE) -C $@

clean:
	rm $(OUTPUT_DIR)/*

deploy: /var/www/html/learngitthehardway/1.core.html

/var/www/html/learngitthehardway/1.core.html: output/1.core.html
	cp output/1.core.html /var/www/html/learngitthehardway/1.core.html
