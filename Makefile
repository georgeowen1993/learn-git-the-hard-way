CHAPTERS=$(shell ls -d [1-9]*)
OUTPUT_DIR=$(shell pwd)/output

include makefiles/Makefile.constants

.PHONY: chapters $(CHAPTERS) deploy
chapters: $(CHAPTERS) 

$(CHAPTERS):
	$(MAKE) -C $@

ifeq ($(shell hostname),rothko)
deploy: chapters /var/www/html/learngitthehardway/1.core.html
/var/www/html/learngitthehardway/1.core.html: output/1.core.html
		cp -R output/* /var/www/html/learngitthehardway
endif

clean:
	rm -rf $(OUTPUT_DIR)/*
	rm -rf /var/www/html/learngitthehardway/*
