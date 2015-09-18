utility: config-cp parse-awk-prep
	cp config/utility.tex patent.tex
	if [ ! -f Makefile ]; then \
		config/parse.awk config/utility.def; \
	fi

provisional: config-cp parse-awk-prep
	cp config/provisional.tex patent.tex
	if [ ! -f Makefile ]; then \
		config/parse.awk config/provisional.def; \
	fi

design: config-cp parse-awk-prep
	cp config/design.tex patent.tex
	if [ ! -f Makefile ]; then \
		config/parse.awk config/design.def; \
	fi

config-cp:
	if [ -d "config" ]; then \
		mkdir -p drawings; \
	fi

parse-awk-prep:
	if [ ! -x config/parse.awk ]; then \
		chmod a+x config/parse.awk ; \
	fi

