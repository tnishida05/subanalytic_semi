out.pdf: $(wildcard *.tex) $(wildcard contents/*.tex) $(wildcard *.sty) $(wildcard *.bib)
	platex main.tex
	pbibtex main.aux
	platex main.tex
	platex main.tex
	dvipdfmx -o out.pdf main.dvi
	$(RM) main.[!t]* main.t[!e]*

clean:
	$(RM) main.[!t]* main.t[!e]*
	$(RM) out.pdf
