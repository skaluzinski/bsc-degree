xelatex : clean
	xelatex EE-dyplom
	biber EE-dyplom
	makeglossaries EE-dyplom
	xelatex EE-dyplom
	xelatex EE-dyplom

pdflatex : clean
	pdflatex -shell-escape EE-dyplom
	biber EE-dyplom
	makeglossaries EE-dyplom
	pdflatex -shell-escape EE-dyplom
	pdflatex -shell-escape EE-dyplom

lualatex : clean
	lualatex -shell-escape EE-dyplom
	biber EE-dyplom
	makeglossaries EE-dyplom
	lualatex -shell-escape EE-dyplom
	lualatex -shell-escape EE-dyplom
	
clean :
	-rm *.acn *.app *.aux *.bbl *.blg *.bcf *.glo *.ist *.lof *.log *.lot *.out *.pdf *.run.xml *.slo *.toc
