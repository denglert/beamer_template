########################################
# To use this package, you first need
# to run the following command: 
# . ./init

# pdflatex OPTIONS
OPTIONS = -shell-escape
# -shel-escape option is needed for feynmp-auto
#
BIBLI = pres

#pdf : 
#	latexmk -pdf thesis.tex

############################################
all : pdf

pdf : pres.pdf


%.pdf : %.tex $(wildcard ../eps/*/*.pdf)
	pdflatex $(OPTIONS) $<
#  bibtex $(BIBLI)
#	pdflatex $(OPTIONS) $<
	pdflatex $(OPTIONS) $<

 
clean ::
	rm -f *.aux *.bbl *.blg *.dvi *.log *.out *.toc *.pdf *_latexmk *.fls
