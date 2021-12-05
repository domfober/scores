

function test(line) {
	line = gensub( /(e2[^ ,]*)/, "Tx \\1 --", "g", line);
	return line;	
}

# subst tiré
function getTire(line) {
	line = gensub( /(a0[^ ,]*)/, "\\\\lyrics<\"3\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(b0[^ ,]*)/, "\\\\lyrics<\"2'\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(b1[^ ,]*)/, "\\\\lyrics<\"6'\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(c&2[^ ,]*)/, "\\\\lyrics<\"6'\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(b2[^ ,]*)/, "\\\\lyrics<\"10'\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(c&3[^ ,]*)/, "\\\\lyrics<\"10'\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(c1[^ ,]*)/, "\\\\lyrics<\"4\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(c2[^ ,]*)/, "\\\\lyrics<\"8\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(c3[^ ,]*)/, "\\\\lyrics<\"12\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(d0[^ ,]*)/, "\\\\lyrics<\"1\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(d1[^ ,]*)/, "\\\\lyrics<\"3'\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(d2[^ ,]*)/, "\\\\lyrics<\"7'\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(e1[^ ,]*)/, "\\\\lyrics<\"5\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(e2[^ ,]*)/, "\\\\lyrics<\"9\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(g#1[^ ,]*)/, "\\\\lyrics<\"4''\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(g#2[^ ,]*)/, "\\\\lyrics<\"8''\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(a&1[^ ,]*)/, "\\\\lyrics<\"4''\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(a&2[^ ,]*)/, "\\\\lyrics<\"8''\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(g0[^ ,]*)/, "\\\\lyrics<\"1'\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(g1[^ ,]*)/, "\\\\lyrics<\"3''\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(g2[^ ,]*)/, "\\\\lyrics<\"7''\", dy=$Ty> (\\1)", "g", line);
	return line;	
}

function getTireC(line) {
	line = gensub( /(a1[^ ,]*)/, "\\\\lyrics<\"5'\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(a2[^ ,]*)/, "\\\\lyrics<\"9'\", dy=$Ty> (\\1)", "g", line);
	return line;	
}

function getTireG(line) {
	line = gensub( /(a1[^ ,]*)/, "\\\\lyrics<\"7\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(a2[^ ,]*)/, "\\\\lyrics<\"11\", dy=$Ty> (\\1)", "g", line);
	return line;	
}

function getTireU(line) {
	line = gensub( /(a1[^ ,]*)/, "\\\\lyrics<\"5':7\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(a2[^ ,]*)/, "\\\\lyrics<\"9':11\", dy=$Ty> (\\1)", "g", line);
	return line;	
}

# subst poussé
function getPousse(line) {
	line = gensub( /(a0[^ ,]*)/, "\\\\lyrics<\"2''\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(a1[^ ,]*)/, "\\\\lyrics<\"5''\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(a2[^ ,]*)/, "\\\\lyrics<\"8''\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(b0[^ ,]*)/, "\\\\lyrics<\"4\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(b1[^ ,]*)/, "\\\\lyrics<\"7\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(c&2[^ ,]*)/, "\\\\lyrics<\"7\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(b2[^ ,]*)/, "\\\\lyrics<\"10\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(c&3[^ ,]*)/, "\\\\lyrics<\"10\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(c1[^ ,]*)/, "\\\\lyrics<\"3'\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(c2[^ ,]*)/, "\\\\lyrics<\"6'\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(c3[^ ,]*)/, "\\\\lyrics<\"9'\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(d0[^ ,]*)/, "\\\\lyrics<\"2\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(d1[^ ,]*)/, "\\\\lyrics<\"5\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(d2[^ ,]*)/, "\\\\lyrics<\"8\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(e1[^ ,]*)/, "\\\\lyrics<\"4'\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(e2[^ ,]*)/, "\\\\lyrics<\"7'\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(g#1[^ ,]*)/, "\\\\lyrics<\"4''\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(g#2[^ ,]*)/, "\\\\lyrics<\"7''\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(a&1[^ ,]*)/, "\\\\lyrics<\"4''\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(a&2[^ ,]*)/, "\\\\lyrics<\"7''\", dy=$Py> (\\1)", "g", line);
	return line;	
}

function getPousseC(line) {
	line = gensub( /(g0[^ ,]*)/, "\\\\lyrics<\"2'\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(g1[^ ,]*)/, "\\\\lyrics<\"5'\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(g2[^ ,]*)/, "\\\\lyrics<\"8'\", dy=$Py> (\\1)", "g", line);
	return line;	
}

function getPousseG(line) {
	line = gensub( /(g0[^ ,]*)/, "\\\\lyrics<\"3\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(g1[^ ,]*)/, "\\\\lyrics<\"6\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(g2[^ ,]*)/, "\\\\lyrics<\"9\", dy=$Py> (\\1)", "g", line);
	return line;	
}

function getPousseU(line) {
	line = gensub( /(g0[^ ,]*)/, "\\\\lyrics<\"2':3\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(g1[^ ,]*)/, "\\\\lyrics<\"5':6\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(g2[^ ,]*)/, "\\\\lyrics<\"8':9\", dy=$Py> (\\1)", "g", line);
	return line;	
}

# subst non ambigues
function getNonAmbigu(line) {
	line = gensub( /(a#0[^ ,]*)/, "\\\\lyrics<\"1''\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(a#1[^ ,]*)/, "\\\\lyrics<\"5''\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(a#2[^ ,]*)/, "\\\\lyrics<\"9''\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(b&0[^ ,]*)/, "\\\\lyrics<\"1''\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(b&1[^ ,]*)/, "\\\\lyrics<\"5''\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(b&2[^ ,]*)/, "\\\\lyrics<\"9''\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(b-1[^ ,]*)/, "\\\\lyrics<\"1\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(c#1[^ ,]*)/, "\\\\lyrics<\"2''\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(d&1[^ ,]*)/, "\\\\lyrics<\"2''\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(c#2[^ ,]*)/, "\\\\lyrics<\"6''\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(c#3[^ ,]*)/, "\\\\lyrics<\"10''\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(d&2[^ ,]*)/, "\\\\lyrics<\"6''\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(d&3[^ ,]*)/, "\\\\lyrics<\"10''\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(d#1[^ ,]*)/, "\\\\lyrics<\"3''\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(d#2[^ ,]*)/, "\\\\lyrics<\"6''\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(d#3[^ ,]*)/, "\\\\lyrics<\"9''\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(e&1[^ ,]*)/, "\\\\lyrics<\"3''\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(e&2[^ ,]*)/, "\\\\lyrics<\"6''\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(e&3[^ ,]*)/, "\\\\lyrics<\"9''\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(d3[^ ,]*)/, "\\\\lyrics<\"11\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(e0[^ ,]*)/, "\\\\lyrics<\"1'\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(e3[^ ,]*)/, "\\\\lyrics<\"10'\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(f#0[^ ,]*)/, "\\\\lyrics<\"2\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(f#1[^ ,]*)/, "\\\\lyrics<\"6\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(f#2[^ ,]*)/, "\\\\lyrics<\"10\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(g&0[^ ,]*)/, "\\\\lyrics<\"2\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(g&1[^ ,]*)/, "\\\\lyrics<\"6\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(g&2[^ ,]*)/, "\\\\lyrics<\"10\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(f1[^ ,]*)/, "\\\\lyrics<\"4'\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(f2[^ ,]*)/, "\\\\lyrics<\"8'\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(g#0[^ ,]*)/, "\\\\lyrics<\"1''\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(g#3[^ ,]*)/, "\\\\lyrics<\"10''\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(a&0[^ ,]*)/, "\\\\lyrics<\"1''\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(a&3[^ ,]*)/, "\\\\lyrics<\"10''\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(g3[^ ,]*)/, "\\\\lyrics<\"12\", dy=$Py> (\\1)", "g", line);
	return line;	
}

function getAmbigu(line) {
	line = gensub( /(a0[^ ,]*)/, "\\\\lyrics<\"P2''|T3\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(a1[^ ,]*)/, "\\\\lyrics<\"P5''|T5'|T7\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(a2[^ ,]*)/, "\\\\lyrics<\"P8''|T9'|T11\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(b0[^ ,]*)/, "\\\\lyrics<\"P4|T2'\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(b1[^ ,]*)/, "\\\\lyrics<\"P7|T6'\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(c&2[^ ,]*)/, "\\\\lyrics<\"P7|T6'\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(b2[^ ,]*)/, "\\\\lyrics<\"P10|T10'\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(c&3[^ ,]*)/, "\\\\lyrics<\"P10|T10'\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(c1[^ ,]*)/, "\\\\lyrics<\"P3'|T4\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(c2[^ ,]*)/, "\\\\lyrics<\"P6'|T8\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(c3[^ ,]*)/, "\\\\lyrics<\"P9'|T12\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(d0[^ ,]*)/, "\\\\lyrics<\"P2|T1\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(d1[^ ,]*)/, "\\\\lyrics<\"P5|T3'\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(d2[^ ,]*)/, "\\\\lyrics<\"P8|T7'\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(e1[^ ,]*)/, "\\\\lyrics<\"P4'|T5\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(e2[^ ,]*)/, "\\\\lyrics<\"P7'|T9\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(g#1[^ ,]*)/, "\\\\lyrics<\"P4''|T4''\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(g#2[^ ,]*)/, "\\\\lyrics<\"P7''|T8''\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(a&1[^ ,]*)/, "\\\\lyrics<\"P4''|T4''\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(a&2[^ ,]*)/, "\\\\lyrics<\"P7''|T8''\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(g0[^ ,]*)/, "\\\\lyrics<\"P2'|P3|T1'\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(g1[^ ,]*)/, "\\\\lyrics<\"P5'|P6|T3''\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(g2[^ ,]*)/, "\\\\lyrics<\"P8'|P9|T7''\", dy=$Ly> (\\1)", "g", line);
	return line;	
}

# tablature en fonction du mode courant
function gettab(line) {
	line = getNonAmbigu(line);
	if (MODE == 2) {
		line = getPousse(line);
		if (RANG == 1)
			line = getPousseG(line);
		else if (RANG == 2)
			line = getPousseC(line);
		else
			line = getPousseU(line);
	}
	else if (MODE == 1) {
		line = getTire(line);
		if (RANG == 1)
			line = getTireG(line);
		else if (RANG == 2)
			line = getTireC(line);
		else
			line = getTireU(line);
	}
	else {
		line = getAmbigu(line);
	}
	return line;	
}


BEGIN {
	START=0;
	MODE=0;
	RANG=0;
}

END {
}

################# 
/\[/ { 
	START = 1;
}

/^%[ 	]+tab:/ {
	switch ($3) {
		case "T":
			MODE = 1;
			break;
		case "P":
			MODE = 2;
			break;
		default:
			MODE = 0;
	}
	switch ($4) {
		case "G":
			RANG = 1;
			break;
		case "C":
			RANG = 2;
			break;
		default:
			RANG = 0;
	}
}

/..*/ {
	if (START) print gettab($0);
	else print $0;
}

/^$/ {
	print "";
}

/][ 	]*$/ { 
	print ",";
	print "[";
	print "\\set<autoEndBar=\"off\">";
	print "\\staffFormat<\"1-line\", distance=10> \\clef<\"none\">"; 
	print "\\instr<\"P\", fsize=16pt, dx=-10, dy=1.5>";
	print "\\instr<\"T\", fsize=16pt, dx=-14.5, dy=-5>";
	print "]";
}


