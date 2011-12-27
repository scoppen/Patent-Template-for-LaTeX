input := patent.tex
output := patent.pdf

default: provisional

utility: utility-cp $(output)

provisional: provisional-cp $(output)

clean:
	rm -rf $(input) $(output)
	rm -rf *.log *.aux *.bbl *.blg

%.pdf: %.ps
	ps2pdf $*.ps $*.pdf
	rm patent.tex

%.ps: %.dvi
	dvips -f $*.dvi > $*.ps

%.dvi: abstract.tex attributes.def background.tex claims.tex description.tex field.tex relations.tex summary.tex
	-latex -interaction=nonstopmode $*.tex
	latex $*.tex
	bibtex $*
	latex $*.tex

%.tex:

utility-cp:
	cp config/utility.tex patent.tex

provisional-cp:
	cp config/provisional.tex patent.tex

attributes.def:

