TEX = pandoc
src = r[0-9].md
FLAGS = --filter=pandoc-fignos --filter=pandoc-tablenos --pdf-engine=xelatex
#FLAGS = --pdf-engine=xelatex

output.pdf : $(src)
	$(TEX) $^ -o $@ $(FLAGS)

.PHONY: clean
clean :
	rm output.pdf
