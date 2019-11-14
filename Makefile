all: index.html cv.pdf

index.html: index.md bibtex.html css/tufte.min.css
	multimarkdown index.md > $@
	html-minifier $@ --collapse-whitespace --remove-comments -o $@

bibtex.html: bibtex.bib dsgplain.bst
	bibtex2html -noheader -nofooter -nodoc -nokeywords -noabstract -nokeys -dl -s dsgplain -linebreak bibtex.bib
	html-minifier bibtex.html --collapse-whitespace --remove-comments -o bibtex.html
	html-minifier bibtex_bib.html --collapse-whitespace --remove-comments -o bibtex_bib.html

css/tufte.min.css: css/tufte.css
	uglifycss $^ > $@

build/cv.pdf: cv.tex bibtex.bib
	latexmk -pdf -xelatex cv

cv.pdf: build/cv.pdf
	cp build/cv.pdf cv.pdf

clean:
	git clean -fxd
