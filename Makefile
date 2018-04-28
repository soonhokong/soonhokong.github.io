	multimarkdown index.md > index.html
index.html: index.md bibtex.html css/tufte.min.css

bibtex.html: bibtex.bib dsgplain.bst
	bibtex2html -noheader -nofooter -nodoc -nokeywords -noabstract -nokeys -dl -s dsgplain -linebreak bibtex.bib

css/tufte.min.css: css/tufte.css
	uglifycss $^ > $@

clean:
	rm -f index.html bibtex.html bibtex_bib.html bib2html* css/*.min.css
