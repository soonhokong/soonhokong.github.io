all: index.html cv.pdf

index.html: index.md publications.html patents.html css/tufte.min.css
	multimarkdown index.md > $@
	html-minifier $@ --collapse-whitespace --remove-comments -o $@

publications.html: publications.bib dsgplain.bst
	bibtex2html -noheader -nofooter -nodoc -nokeywords -noabstract -nokeys -dl -s dsgplain -linebreak publications.bib
	html-minifier publications.html --collapse-whitespace --remove-comments -o publications.html
	html-minifier publications_bib.html --collapse-whitespace --remove-comments -o publications_bib.html
	rm -rf bib2html*

patents.html: patents.bib dsgplain.bst
	bibtex2html -noheader -nofooter -nodoc -nokeywords -noabstract -nokeys -dl -s dsgplain -linebreak patents.bib
	html-minifier patents.html --collapse-whitespace --remove-comments -o patents.html
	html-minifier patents_bib.html --collapse-whitespace --remove-comments -o patents_bib.html
	rm -rf bib2html*

css/tufte.min.css: css/tufte.css
	uglifycss $^ > $@

build/cv.pdf: cv.tex publications.bib
	latexmk -pdf -xelatex cv

cv.pdf: build/cv.pdf
	cp build/cv.pdf cv.pdf

clean:
	git clean -fxd
