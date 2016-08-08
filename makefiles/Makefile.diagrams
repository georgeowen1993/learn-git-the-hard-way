include ../../../makefiles/Makefile.constants
MERMAID_FILES:=$(wildcard *.mermaid)
OBJ_FILES:=$(patsubst %.mermaid,$(OUTPUT_DIR)/diagrams/%.mermaid.png,$(MERMAID_FILES))


$(OUTPUT_DIR)/diagrams/%.mermaid.png: %.mermaid
	mermaid -o $(OUTPUT_DIR)/diagrams $<

all: $(OBJ_FILES)

