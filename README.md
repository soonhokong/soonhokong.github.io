It uses 
[bibtex2html](https://www.lri.fr/~filliatr/bibtex2html), 
[html-minifier](https://www.npmjs.com/package/html-minifier),
[multimarkdown6](https://github.com/fletcher/MultiMarkdown-6), 
and [uglifycss](https://www.npmjs.com/package/uglifycss)
.
For supported markdown syntax, please check [its syntax guide](https://rawgit.com/fletcher/MultiMarkdown-6-Syntax-Guide/master/index.html).

Required Packages
-----------------

```bash
brew install bibtex2html multimarkdown npm
npm install -g uglifycss
npm install -g html-minifier
```

Generate index.html from index.md
---------------------------------

```bash
make
```
