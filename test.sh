#!/usr/bin

files=`ls book/`

mkdir book_html

for f in $files
do
	new_name=`echo $f | sed -e s/markdown/html/`
	echo $new_name
	pandoc -f markdown -t html book/$f -o book_html/$new_name 
	#pandoc -o book_html/$f.html
done