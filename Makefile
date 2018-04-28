index.html: index.md bibtex.html css/tufte.min.css
	multimarkdown index.md > $@
	html-minifier $@ --collapse-whitespace --remove-comments -o $@

bibtex.html: bibtex.bib dsgplain.bst
	bibtex2html -noheader -nofooter -nodoc -nokeywords -noabstract -nokeys -dl -s dsgplain -linebreak bibtex.bib
	html-minifier bibtex.html --collapse-whitespace --remove-comments -o bibtex.html
	html-minifier bibtex_bib.html --collapse-whitespace --remove-comments -o bibtex_bib.html

css/tufte.min.css: css/tufte.css
	uglifycss $^ > $@

clean:
	rm -f index.html bibtex.html bibtex_bib.html bib2html* css/*.min.css
