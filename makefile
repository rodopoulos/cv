# LaTeX Makefile
FILE=main

all: pt clean

en: clean
	@echo "Generating english version"
	@pdflatex en.tex > /dev/null
	@mv en.pdf cv-felipe-rodopoulos.pdf

pt:
	@echo "Generating portuguese version (default)"
	@pdflatex pt.tex > /dev/null
	@mv pt.pdf cv-felipe-rodopoulos.pdf

clean:
	@rm -f *.aux *.blg *.bbl *.log *.out *.fdb_latexmk *.fls

.PHONY: all cv clean
