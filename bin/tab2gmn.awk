
function gettab(line, pos) {
	gsub(/[TP]/ ,"",line);
	gsub(/\/[-1-9.]+/ ,"",line);
	gsub(/ *}/ ,"",line);
	gsub(/{ */ ,"",line);
	gsub(/, */ ,",",line);
	gsub(/  */ ," ",line);
	return "\\lyrics<\""line"\", dy="pos", fattrib=\"b\">";	
}

function getgmn(line) {
	gsub("T10''", "c#3", line)
	gsub("P10''", "g#3", line)
	gsub("T9''", "a#2", line)
	gsub("P9''", "d#3", line)
	gsub("T8''", "g#2", line)
	gsub("P8''", "a2", line)
	gsub("T7''", "g2", line)
	gsub("P7''", "g#2", line)
	gsub("T6''", "c#2", line)
	gsub("P6''", "d#2", line)
	gsub("T5''", "a#1", line)
	gsub("P5''", "a1", line)
	gsub("T4''", "g#1", line)
	gsub("P4''", "g#1", line)
	gsub("T3''", "g1", line)
	gsub("P3''", "d#1", line)
	gsub("T2''", "c#1", line)
	gsub("P2''", "a0", line)
	gsub("T1''", "a#0", line)
	gsub("P1''", "g#0", line)

	gsub("T10'", "b2", line)
	gsub("P10", "b2", line)
	gsub("T10", "f#2", line)
	gsub("P10'", "e3", line)
	gsub("P11", "d3", line)
	gsub("T11", "a2", line)
	gsub("T12", "c3", line)
	gsub("P12", "g3", line)

	gsub("P1'", "e0", line)
	gsub("T1'", "g0", line)
	gsub("P2'", "g0", line)
	gsub("T2'", "b0", line)
	gsub("P3'", "c1", line)
	gsub("T3'", "d1", line)
	gsub("P4'", "e1", line)
	gsub("T4'", "f1", line)
	gsub("P5'", "g1", line)
	gsub("T5'", "a1", line)
	gsub("P6'", "c2", line)
	gsub("T6'", "b1", line)
	gsub("P7'", "e2", line)
	gsub("T7'", "d2", line)
	gsub("P8'", "g2", line)
	gsub("T8'", "f2", line)
	gsub("P9'", "c3", line)
	gsub("T9'", "a2", line)

	gsub("P1", "b-1", line)
	gsub("T1", "d0", line)
	gsub("P2", "d0", line)
	gsub("T2", "f#0", line)
	gsub("P3", "g0", line)
	gsub("T3", "a0", line)
	gsub("P4", "b0", line)
	gsub("T4", "c1", line)
	gsub("P5", "d1", line)
	gsub("T5", "e1", line)
	gsub("P6", "g1", line)
	gsub("T6", "f#1", line)
	gsub("P7", "b1", line)
	gsub("T7", "a1", line)
	gsub("P8", "d2", line)
	gsub("T8", "c2", line)
	gsub("P9", "g2", line)
	gsub("T9", "e2", line)

	return "( "line" )";	
}

function printHarm(harm) {
	if (match(harm, /[A-Z]/))
		HARMSIZE="fsize=16pt";
	else
		HARMSIZE="fsize=14pt";
	print "	\\harmony<\"" harm "\", dy=$hdy1, dx=0, " HARMSIZE ">";
}

function printgmn(line, chord, tindex, pindex) {
	if (pindex)
		POS = "$Py"
	else if (tindex)
		POS = "$Ty"
	else return;
	tab = substr (line, CHORD ? CHORD : (tindex ? tindex : pindex));
	print "	"gettab(tab, POS) getgmn(tab);
}



BEGIN {
	FS=" "
}

END {
}

################# 
/^T[1-9].*/ { 
	gsub(/	/, " ", $0);
	print "	"gettab($0, "$Ty") getgmn($0);
}

/^P[1-9].*/ { 
	gsub(/	/, " ", $0);
	print "	"gettab($0, "$Py") getgmn($0);
}

/^H.*/ { 
	gsub(/	/, " ", $0);
	printHarm($2);
	CHORD  = index($0, "{");
	printgmn($0, CHORD, index($0, "T"), index($0, "P"));
}

/^[^PTH].*/ {
	print
}

/^$/ {
	print "";
}


