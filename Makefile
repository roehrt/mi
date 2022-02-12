COMPILER=latexmk -pdf -f -pdflatex="pdflatex -interaction=nonstopmode" -use-make

example_sources = $(wildcard examples/*.tex)
example_pdfs = $(example_sources:tex=pdf)

all: $(example_pdfs)

%.pdf: %.tex
	$(COMPILER) $<

cleanall:
	latexmk -C

clean:
	latexmk -c