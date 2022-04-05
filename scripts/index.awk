function display(genre, id) {
	gsub("Cercle", "Cercle circassien", genre);
	gsub("ID", id, genre);
	return genre;
}

function printentry(title, file, genre, compos, origin, vol) {
	print "    <tr>"
	print "     <td class=title><a href=\"" DIR "/" file "\">" title "</a></td>"
	print "     <td class=genre>"display(genre)"</td>"
	print "     <td class=compos>"compos"</td>"
	print "     <td class=origin>"origin"</td>"
	print "   </tr>";
}


BEGIN {
	FS=":"
	if (HEADER) {
		print "<html>"
		print "<header>"
		print "<meta http-equiv=\"Content-Type\" content=\"text/html;charset=utf-8\" >"
		print "<link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"imgs/favicon.ico\" />"
		print "<link rel=\"stylesheet\" href=\"scores.css\" type=\"text/css\" />"
		print "<title>Partitions pour accordéon diatonique</title>"
		print "</header>"
		print
		print "<body>"
	}
	print display(TITLE, ID)
	print "<table>"
}

END {
	print "</table>"
	if (HEADER) {
		print "</body>"
		print "</html>"
	}
	else print "<hr>"
}

/^..*/ {
	printentry($1, $8, $4, $5, $6, $7)
}
	