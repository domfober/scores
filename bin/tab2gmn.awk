
function gettab(line, push) {
	if (match(line, /,/)) {
		textformat=", textformat='lt', fsize=$csize";
		CHORDSTART = "{";
		CHORDEND = "}";
		if (push) pos = PY2;
		else pos = TY2;
	}
	else {
		textformat="";
		CHORDSTART = CHORDEND = "";
		if (push) pos = PY1;
		else pos = TY1;
	}
	gsub(/[TP]/ ,"",line);
	gsub(/\/[-1-9.]+/ ,"",line);
	gsub(/ *}/ ,"",line);
	gsub(/{ */ ,"",line);
	gsub(/, */ ,"\\n",line);
	gsub(/  */ ," ",line);
	return "\\lyrics<\""line"\", dy="pos", fattrib=\"b\""textformat">";	
}

function toFlat(line) {
	gsub("c#-1", "d\\&-1", line)
	gsub("c#0", "d\\&0", line)
	gsub("c#1", "d\\&1", line)
	gsub("c#2", "d\\&2", line)
	gsub("c#3", "d\\&3", line)
	gsub("c#4", "d\\&4", line)

	gsub("d#-1", "e\\&-1", line)
	gsub("d#0", "e\\&0", line)
	gsub("d#1", "e\\&1", line)
	gsub("d#2", "e\\&2", line)
	gsub("d#3", "e\\&3", line)
	gsub("d#4", "e\\&4", line)

	gsub("f#-1", "b\\&-1", line)
	gsub("f#0", "b\\&0", line)
	gsub("f#1", "b\\&1", line)
	gsub("f#2", "b\\&2", line)
	gsub("f#3", "b\\&3", line)
	gsub("f#4", "b\\&4", line)

	gsub("g#-1", "a\\&-1", line)
	gsub("g#0", "a\\&0", line)
	gsub("g#1", "a\\&1", line)
	gsub("g#2", "a\\&2", line)
	gsub("g#3", "a\\&3", line)
	gsub("g#4", "a\\&4", line)

	gsub("a#-1", "b\\&-1", line)
	gsub("a#0", "b\\&0", line)
	gsub("a#1", "b\\&1", line)
	gsub("a#2", "b\\&2", line)
	gsub("a#3", "b\\&3", line)
	gsub("a#4", "b\\&4", line)
	return line;	
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

	if (FLAT)
		line=toFlat(line)
	return "( "CHORDSTART line CHORDEND" )";	
}

function printHarm(harm, chord) {
	if (match(harm, /[A-Z]/))
		HARMSIZE="fsize=16pt";
	else
		HARMSIZE="fsize=14pt";
	if (match(chord, /-[0-9]/))
		pos = chord;
	else if (chord == "C")
		pos = "$hdyC";
	else
		pos = "$hdy1";
	print "	\\harmony<\"" harm "\", dy=" pos ", dx=0, " HARMSIZE ">";
}

function printgmn(line, chord, tindex, pindex) {
	if (pindex)
		PUSH = 1;
	else if (tindex)
		PUSH = 0;
	else return;
	tab = substr (line, chord ? chord : (tindex ? tindex : pindex));
	print "	"gettab(tab, PUSH) getgmn(tab);
}


BEGIN {
	FS=" "
	CHORDSTART = "";
	CHORDEND = "";
	PY1 = "$Py";
	TY1 = "$Ty"
	PY2 = "$PyC";
	TY2 = "$TyC";
}

END {
}

################# 
/^T[1-9].*/ { 
	gsub(/	/, " ", $0);
	print "	"gettab($0, 0) getgmn($0);
}

/^P[1-9].*/ { 
	gsub(/	/, " ", $0);
	print "	"gettab($0, 1) getgmn($0);
}

/^H.*/ { 
	gsub(/	/, " ", $0);
	printHarm($2, $3);
}

/^[^PTH].*/ {
	print
}

/^$/ {
	print "";
}


