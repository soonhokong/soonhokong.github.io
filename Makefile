index.html: index.md bibtex.html
	multimarkdown index.md > index.html

bibtex.html: bibtex.bib
	bibtex2html -noheader -nofooter -nodoc -nokeywords -noabstract -nokeys -dl -s plain -linebreak bibtex.bib

clean:
	rm -f index.html bibtex.html bibtex_bib.html bib2html*
