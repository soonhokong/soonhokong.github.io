for x in `ls -1 *.pdf`
do
	echo $x...
	pdf2svg $x ${x//.pdf/.svg}
done
