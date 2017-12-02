# LaTeX Makefile
FILE=main

all: cv clean

cv:
	@echo "Generating default curriculum (english)"
	@pdflatex $(FILE) > /dev/null
	@mv main.pdf cv-felipe-rodopoulos.pdf

clean:
	@rm -f *.aux *.blg *.bbl *.log

.PHONY: all cv clean
