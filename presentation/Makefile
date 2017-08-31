# set latexfile to the name of the main file without the .tex
latexfile = presentation

all :
	rm bin/$(latexfile).pdf -rf
	pdflatex $(latexfile).tex

	cp $(latexfile).pdf bin/.
	#pdftoppm -rx 900 -ry 900 -png bin/$(latexfile).pdf bin/img_$(latexfile)
