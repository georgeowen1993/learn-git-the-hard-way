CHAPTERS:=$(shell ls -d [1-9]*)
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

$(DEPLOY_DIR): zip
	cp -R output/9999.learngitthehardway.pdf $(DEPLOY_DIR)/learngitthehardway.pdf
	cp -R output/9999.learngitthehardway.pdf learngitthehardway.pdf
	cp -R output/* $(DEPLOY_DIR)
	#cp $(DEPLOY_DIR)/9999.learngitthehardway.html $(DEPLOY_DIR)/index.html

zip:
	tar -zcf $(DEPLOY_DIR)/$(BOOK_NAME).tar.gz output

else
deploy:
	$(error not on rothko)
endif

clean:
	rm -rf $(OUTPUT_DIR)/* $(DEPLOY_DIR)/*
