FILE=proj2

$(FILE).pdf: $(FILE).ps
	ps2pdf $(FILE).ps

$(FILE).ps: $(FILE).dvi
	dvips $(FILE).dvi

$(FILE).dvi: $(FILE).tex
	latex $(FILE).tex
