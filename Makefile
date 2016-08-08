CHAPTERS:=$(shell ls -d asciidoc/[1-9]*)
OUTPUT_DIR:=$(shell pwd)/output
DEPLOY_DIR:=/var/www/html/learngitthehardway
BOOK_NAME:=learngitthehardway

include makefiles/Makefile.constants

.PHONY: chapters $(CHAPTERS) deploy

chapters: $(CHAPTERS) 

$(CHAPTERS):
	$(MAKE) -C $@

all: clean chapters deploy

ifeq ($(shell hostname),rothko)

deploy: chapters $(DEPLOY_DIR)

$(DEPLOY_DIR): FORCE
	cp -R output/9999.learngitthehardway.pdf output/learngitthehardway.pdf
	cp -R output/learngitthehardway.pdf learngitthehardway.pdf
	cp -R output/* $(DEPLOY_DIR)

FORCE:

else
deploy:
	$(error not on rothko)
endif

clean:
	rm -rf $(OUTPUT_DIR)/* $(DEPLOY_DIR)/*
