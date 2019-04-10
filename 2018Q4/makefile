TEX = pandoc
src := $(sort $(wildcard r[0-9].md))
FLAGS = --filter=pandoc-fignos --pdf-engine=xelatex
#FLAGS = --pdf-engine=xelatex

output.pdf : $(src)
	$(TEX) $^ -o $@ $(FLAGS)

.PHONY: clean
clean :
	rm output.pdf
