MAKE=make
CHAPTERS=$(shell ls -d [1-9]*)

all:
	$(MAKE) -C 1.core
	$(MAKE) -C 2.advanced_local
	$(MAKE) -C 3.remotes
	$(MAKE) -C 100.appendices

