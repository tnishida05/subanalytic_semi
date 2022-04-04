out.pdf: $(wildcard *.tex) $(wildcard contents/*.tex) $(wildcard *.sty) $(wildcard *.bib)
	uplatex main.tex
	upbibtex main.aux
	uplatex main.tex
	uplatex main.tex
	dvipdfmx -o out.pdf main.dvi
	$(RM) main.[!t]* main.t[!e]*

clean:
	$(RM) main.[!t]* main.t[!e]*
	$(RM) out.pdf
