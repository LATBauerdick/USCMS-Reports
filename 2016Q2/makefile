TEX = pandoc
src = template.tex r0.md r1.md r2.md r5.md r7.md
FLAGS = --filter=pandoc-fignos --latex-engine=xelatex

output.pdf : $(src)
	$(TEX) $(filter-out $<,$^ ) -o $@ --template=$< $(FLAGS)

.PHONY: clean
clean :
	rm output.pdf
