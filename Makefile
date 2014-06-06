input := patent.tex
output := patent.pdf

utility: utility-config $(output)

provisional: provisional-config $(output)

design: design-config $(output)

utility-config: config-cp
	cp config/utility.tex patent.tex
	if [ ! -f Makefile ]; then \
		cp -f config/Makefile . ; \
		echo "default: utility" >> Makefile ; \
		config/parse.awk config/utility.def; \
	fi

provisional-cp: config-cp
	cp config/provisional.tex patent.tex
	if [ ! -f Makefile ]; then \
		cp -f config/Makefile . ; \
		echo "default: provisional" >> Makefile ; \
		config/parse.awk config/provisional.def; \
	fi

design-cp: config-cp
	cp config/design.tex patent.tex
	if [ ! -f Makefile ]; then \
		cp -f config/Makefile . ; \
		echo "default: design" >> Makefile ; \
		config/parse.awk config/design.def; \
	fi

config-cp:
	if [ -d "config" ]; then \
		mkdir -p drawings; \
	fi

clean:
	rm -rf $(input) $(output)
	rm -rf *.log *.aux *.bbl *.blg

%.pdf: %.ps
	ps2pdf $*.ps $*.pdf
	rm patent.tex

%.ps: %.dvi
	dvips -f $*.dvi > $*.ps

%.dvi: %.tex
	-latex -interaction=nonstopmode $*.tex
	latex $*.tex
	-bibtex $*
	latex $*.tex

%.tex:

attributes.def:

