CHAPTERS=$(shell ls -d [0-9]*)
OUTPUT_DIR=$(shell pwd)/output

include makefiles/Makefile.constants

.PHONY: chapters $(CHAPTERS) deploy
chapters: $(CHAPTERS) 

$(CHAPTERS):
	$(MAKE) -C $@

ifeq ($(shell hostname),rothko)
deploy: chapters zip /var/www/html/learngitthehardway

/var/www/html/learngitthehardway/: zip
		cp -R output/* /var/www/html/learngitthehardway

zip:
	tar -zcf output/learngitthehardway.tar.gz output
else
deploy:
	$(error not on rothko)
endif

clean:
	rm -rf $(OUTPUT_DIR)/*
	rm -rf /var/www/html/learngitthehardway/*
