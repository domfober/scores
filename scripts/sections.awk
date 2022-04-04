function printentry(genre) {
	label = genre;
	gsub("Cercle", "Cercle circassien", genre);
	gsub("Bourree", "Bourrée", genre);
	print "    <li><a href=#"label">"genre"</a>";
}


BEGIN {
	FS=":"
	print "<html>"
	print "<header>"
	print "<meta http-equiv=\"Content-Type\" content=\"text/html;charset=utf-8\" >"
	print "<link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"imgs/favicon.ico\" />"
	print "<link rel=\"stylesheet\" href=\"scores.css\" type=\"text/css\" />"
	print "<title>Partitions pour accordéon diatonique</title>"
	print "</header>"
	print
	print "<body>"
	print "	<h1 id=top>" TITLE "</h1>"
	print "<ul>"
}

END {
	print "</ul>\n";
	print "<hr>\n";
}

/^..*/ {
	printentry($1)
}
	