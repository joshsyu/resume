MAIN=cv
LATEX=xelatex
BIBTEX=biber
RM=rm -f

.SUFFIXES: .tex

all: $(MAIN).pdf

$(MAIN).pdf: *.tex
	$(LATEX) $(MAIN)
	$(BIBTEX) $(MAIN)
	$(LATEX) $(MAIN)
	$(LATEX) $(MAIN)
clean:
	$(RM) *.log *.aux *.dvi *.lof *.toc *.bbl *.blg *.bcf *.xml *.out
clean-pdf:
	$(RM) *.pdf
clean-all: clean-pdf clean


