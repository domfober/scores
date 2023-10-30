# initialisation des tables utilisées pour les accords

function initTbl() {
	initTire();
	initTireC();
	initTireG();
	initTireU();
	initPousse();
	initPousseC();
	initPousseG();
	initPousseU();
	initNonAmbigu();
	initAmbigu();
}

function initTire() {
	tireTbl["a0"] = "3";
	tireTbl["b0"] = "2'";
	tireTbl["c&1"] = "2'";
	tireTbl["b1"] = "6'";
	tireTbl["c&2"] = "6'";
	tireTbl["b2"] = "10'";
	tireTbl["c&3"] = "10'";
	tireTbl["c1"] = "4";
	tireTbl["c2"] = "8";
	tireTbl["c3"] = "12";
	tireTbl["b#0"] = "4";
	tireTbl["b#1"] = "8";
	tireTbl["b#2"] = "12";
	tireTbl["d0"] = "1";
	tireTbl["d1"] = "3'";
	tireTbl["d2"] = "7'";
	tireTbl["e1"] = "5";
	tireTbl["e2"] = "9";
	tireTbl["g#1"] = "4''";
	tireTbl["g#2"] = "8''";
	tireTbl["a&1"] = "4''";
	tireTbl["a&2"] = "8''";
	tireTbl["g0"] = "1'";
	tireTbl["g1"] = "3''";
	tireTbl["g2"] = "7''";
	tireTbl["f##1"] = "3''";
	tireTbl["f##2"] = "7''";
}

function initTireC() {
	tireTblC["a1"] = "5'";
	tireTblC["a2"] = "9'";
}

function initTireG() {
	tireTblG["a1"] = "7";
	tireTblG["a2"] = "11";
}

function initTireU() {
	tireTblU["a1"] = "5'";
	tireTblU["a2"] = "9'";
}

# subst poussé
function initPousse() {
	pousseTbl["a0"] = "2''";
	pousseTbl["a1"] = "5''";
	pousseTbl["a2"] = "8''";
	pousseTbl["b0"] = "4";
	pousseTbl["c&1"] = "4";
	pousseTbl["b1"] = "7";
	pousseTbl["c&2"] = "7";
	pousseTbl["b2"] = "10";
	pousseTbl["c&3"] = "10";
	pousseTbl["c1"] = "3'";
	pousseTbl["c2"] = "6'";
	pousseTbl["c3"] = "9'";
	pousseTbl["b#0"] = "3'";
	pousseTbl["b#1"] = "6'";
	pousseTbl["b#2"] = "9'";
	pousseTbl["d0"] = "2";
	pousseTbl["d1"] = "5";
	pousseTbl["d2"] = "8";
	pousseTbl["e1"] = "4'";
	pousseTbl["e2"] = "7'";
	pousseTbl["g#1"] = "4''";
	pousseTbl["g#2"] = "7''";
	pousseTbl["a&1"] = "4''";
	pousseTbl["a&2"] = "7''";
}

function initPousseC() {
	pousseTblC["g0"] = "2'";
	pousseTblC["g1"] = "5'";
	pousseTblC["g2"] = "8'";
	pousseTblC["f##1"] = "5'";
	pousseTblC["f##2"] = "8'";
}

function initPousseG() {
	pousseTblG["g0"] = "3";
	pousseTblG["g1"] = "6";
	pousseTblG["g2"] = "9";
	pousseTblG["f##1"] = "6";
	pousseTblG["f##2"] = "9";
}

function initPousseU() {
	pousseTblU["g0"] = "2'";
	pousseTblU["g1"] = "5'";
	pousseTblU["g2"] = "8'";
	pousseTblU["f##1"] = "5'";
	pousseTblU["f##2"] = "8'";
}

# subst non ambigues
function initNonAmbigu() {
	nonAmbiguTbl["a#0"] = "1''";
	nonAmbiguTbl["a#1"] = "5''";
	nonAmbiguTbl["a#2"] = "9''";
	nonAmbiguTbl["b&0"] = "1''";
	nonAmbiguTbl["b&1"] = "5''";
	nonAmbiguTbl["b&2"] = "9''";
	nonAmbiguTbl["b-1"] = "1";
	nonAmbiguTbl["c#1"] = "2''";
	nonAmbiguTbl["d&1"] = "2''";
	nonAmbiguTbl["c#2"] = "6''";
	nonAmbiguTbl["c#3"] = "10''";
	nonAmbiguTbl["d&2"] = "6''";
	nonAmbiguTbl["d&3"] = "10''";
	nonAmbiguTbl["d#1"] = "3''";
	nonAmbiguTbl["d#2"] = "6''";
	nonAmbiguTbl["d#3"] = "9''";
	nonAmbiguTbl["e&1"] = "3''";
	nonAmbiguTbl["e&2"] = "6''";
	nonAmbiguTbl["e&3"] = "9''";
	nonAmbiguTbl["d3"] = "11";
	nonAmbiguTbl["e0"] = "1'";
	nonAmbiguTbl["e3"] = "10'";
	nonAmbiguTbl["f#0"] = "2";
	nonAmbiguTbl["f#1"] = "6";
	nonAmbiguTbl["f#2"] = "10";
	nonAmbiguTbl["g&0"] = "2";
	nonAmbiguTbl["g&1"] = "6";
	nonAmbiguTbl["g&2"] = "10";
	nonAmbiguTbl["f1"] = "4'";
	nonAmbiguTbl["f2"] = "8'";
	nonAmbiguTbl["e#1"] = "4'";
	nonAmbiguTbl["e#2"] = "8'";
	nonAmbiguTbl["g#0"] = "1''";
	nonAmbiguTbl["g#3"] = "10''";
	nonAmbiguTbl["a&0"] = "1''";
	nonAmbiguTbl["a&3"] = "10''";
	nonAmbiguTbl["g3"] = "12";
	nonAmbiguTbl["f##3"] = "12";
}

function initAmbigu() {
	ambiguTbl["a0"] = "P2''|T3";
	ambiguTbl["a1"] = "P5''|T5'|T7";
	ambiguTbl["a2"] = "P8''|T9'|T11";
	ambiguTbl["b0"] = "P4|T2'";
	ambiguTbl["c&1"] = "P4|T2'";
	ambiguTbl["b1"] = "P7|T6'";
	ambiguTbl["c&2"] = "P7|T6'";
	ambiguTbl["b2"] = "P10|T10'";
	ambiguTbl["c&3"] = "P10|T10'";
	ambiguTbl["c1"] = "P3'|T4";
	ambiguTbl["c2"] = "P6'|T8";
	ambiguTbl["c3"] = "P9'|T12";
	ambiguTbl["b#0"] = "P3'|T4";
	ambiguTbl["b#1"] = "P6'|T8";
	ambiguTbl["b#2"] = "P9'|T12";
	ambiguTbl["d0"] = "P2|T1";
	ambiguTbl["d1"] = "P5|T3'";
	ambiguTbl["d2"] = "P8|T7'";
	ambiguTbl["e1"] = "P4'|T5";
	ambiguTbl["e2"] = "P7'|T9";
	ambiguTbl["g#1"] = "P4''|T4''";
	ambiguTbl["g#2"] = "P7''|T8''";
	ambiguTbl["a&1"] = "P4''|T4''";
	ambiguTbl["a&2"] = "P7''|T8''";
	ambiguTbl["g0"] = "P2'|P3|T1'";
	ambiguTbl["g1"] = "P5'|P6|T3''";
	ambiguTbl["g2"] = "P8'|P9|T7''";
	ambiguTbl["f##1"] = "P5'|P6|T3''";
	ambiguTbl["f##2"] = "P8'|P9|T7''";
}



# subst tiré
function getTire(line) {
	line = gensub( /(a0[^ ,]*)/, "\n\t\\\\lyrics<\"3\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(b0[^ ,]*)/, "\n\t\\\\lyrics<\"2'\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(c&1[^ ,]*)/, "\n\t\\\\lyrics<\"2'\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(b1[^ ,]*)/, "\n\t\\\\lyrics<\"6'\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(c&2[^ ,]*)/, "\n\t\\\\lyrics<\"6'\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(b2[^ ,]*)/, "\n\t\\\\lyrics<\"10'\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(c&3[^ ,]*)/, "\n\t\\\\lyrics<\"10'\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(c1[^ ,]*)/, "\n\t\\\\lyrics<\"4\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(c2[^ ,]*)/, "\n\t\\\\lyrics<\"8\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(c3[^ ,]*)/, "\n\t\\\\lyrics<\"12\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(b#0[^ ,]*)/, "\n\t\\\\lyrics<\"4\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(b#1[^ ,]*)/, "\n\t\\\\lyrics<\"8\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(b#2[^ ,]*)/, "\n\t\\\\lyrics<\"12\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(d0[^ ,]*)/, "\n\t\\\\lyrics<\"1\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(d1[^ ,]*)/, "\n\t\\\\lyrics<\"3'\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(d2[^ ,]*)/, "\n\t\\\\lyrics<\"7'\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(e1[^ ,]*)/, "\n\t\\\\lyrics<\"5\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(e2[^ ,]*)/, "\n\t\\\\lyrics<\"9\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(g#1[^ ,]*)/, "\n\t\\\\lyrics<\"4''\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(g#2[^ ,]*)/, "\n\t\\\\lyrics<\"8''\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(a&1[^ ,]*)/, "\n\t\\\\lyrics<\"4''\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(a&2[^ ,]*)/, "\n\t\\\\lyrics<\"8''\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(g0[^ ,]*)/, "\n\t\\\\lyrics<\"1'\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(g1[^ ,]*)/, "\n\t\\\\lyrics<\"3''\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(g2[^ ,]*)/, "\n\t\\\\lyrics<\"7''\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(f##1[^ ,]*)/, "\n\t\\\\lyrics<\"3''\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(f##2[^ ,]*)/, "\n\t\\\\lyrics<\"7''\", dy=$Ty> (\\1)", "g", line);
	return line;	
}

function getTireC(line) {
	line = gensub( /(a1[^ ,]*)/, "\n\t\\\\lyrics<\"5'\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(a2[^ ,]*)/, "\n\t\\\\lyrics<\"9'\", dy=$Ty> (\\1)", "g", line);
	return line;	
}

function getTireG(line) {
	line = gensub( /(a1[^ ,]*)/, "\n\t\\\\lyrics<\"7\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(a2[^ ,]*)/, "\n\t\\\\lyrics<\"11\", dy=$Ty> (\\1)", "g", line);
	return line;	
}

function getTireU(line) {
	line = gensub( /(a1[^ ,]*)/, "\n\t\\\\lyrics<\"5':7\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(a2[^ ,]*)/, "\n\t\\\\lyrics<\"9':11\", dy=$Ty> (\\1)", "g", line);
	return line;	
}

# subst poussé
function getPousse(line) {
	line = gensub( /(a0[^ ,]*)/, "\n\t\\\\lyrics<\"2''\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(a1[^ ,]*)/, "\n\t\\\\lyrics<\"5''\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(a2[^ ,]*)/, "\n\t\\\\lyrics<\"8''\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(b0[^ ,]*)/, "\n\t\\\\lyrics<\"4\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(c&1[^ ,]*)/, "\n\t\\\\lyrics<\"4\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(b1[^ ,]*)/, "\n\t\\\\lyrics<\"7\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(c&2[^ ,]*)/, "\n\t\\\\lyrics<\"7\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(b2[^ ,]*)/, "\n\t\\\\lyrics<\"10\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(c&3[^ ,]*)/, "\n\t\\\\lyrics<\"10\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(c1[^ ,]*)/, "\n\t\\\\lyrics<\"3'\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(c2[^ ,]*)/, "\n\t\\\\lyrics<\"6'\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(c3[^ ,]*)/, "\n\t\\\\lyrics<\"9'\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(b#0[^ ,]*)/, "\n\t\\\\lyrics<\"3'\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(b#1[^ ,]*)/, "\n\t\\\\lyrics<\"6'\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(b#2[^ ,]*)/, "\n\t\\\\lyrics<\"9'\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(d0[^ ,]*)/, "\n\t\\\\lyrics<\"2\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(d1[^ ,]*)/, "\n\t\\\\lyrics<\"5\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(d2[^ ,]*)/, "\n\t\\\\lyrics<\"8\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(e1[^ ,]*)/, "\n\t\\\\lyrics<\"4'\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(e2[^ ,]*)/, "\n\t\\\\lyrics<\"7'\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(g#1[^ ,]*)/, "\n\t\\\\lyrics<\"4''\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(g#2[^ ,]*)/, "\n\t\\\\lyrics<\"7''\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(a&1[^ ,]*)/, "\n\t\\\\lyrics<\"4''\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(a&2[^ ,]*)/, "\n\t\\\\lyrics<\"7''\", dy=$Py> (\\1)", "g", line);
	return line;	
}

function getPousseC(line) {
	line = gensub( /(g0[^ ,]*)/, "\n\t\\\\lyrics<\"2'\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(g1[^ ,]*)/, "\n\t\\\\lyrics<\"5'\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(g2[^ ,]*)/, "\n\t\\\\lyrics<\"8'\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(f##1[^ ,]*)/, "\n\t\\\\lyrics<\"5'\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(f##2[^ ,]*)/, "\n\t\\\\lyrics<\"8'\", dy=$Py> (\\1)", "g", line);
	return line;	
}

function getPousseG(line) {
	line = gensub( /(g0[^ ,]*)/, "\n\t\\\\lyrics<\"3\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(g1[^ ,]*)/, "\n\t\\\\lyrics<\"6\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(g2[^ ,]*)/, "\n\t\\\\lyrics<\"9\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(f##1[^ ,]*)/, "\n\t\\\\lyrics<\"6\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(f##2[^ ,]*)/, "\n\t\\\\lyrics<\"9\", dy=$Py> (\\1)", "g", line);
	return line;	
}

function getPousseU(line) {
	line = gensub( /(g0[^ ,]*)/, "\n\t\\\\lyrics<\"2':3\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(g1[^ ,]*)/, "\n\t\\\\lyrics<\"5':6\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(g2[^ ,]*)/, "\n\t\\\\lyrics<\"8':9\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(f##1[^ ,]*)/, "\n\t\\\\lyrics<\"5':6\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(f##2[^ ,]*)/, "\n\t\\\\lyrics<\"8':9\", dy=$Py> (\\1)", "g", line);
	return line;	
}

# subst non ambigues
function getNonAmbigu(line) {
	line = gensub( /(a#0[^ ,]*)/, "\n\t\\\\lyrics<\"1''\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(a#1[^ ,]*)/, "\n\t\\\\lyrics<\"5''\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(a#2[^ ,]*)/, "\n\t\\\\lyrics<\"9''\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(b&0[^ ,]*)/, "\n\t\\\\lyrics<\"1''\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(b&1[^ ,]*)/, "\n\t\\\\lyrics<\"5''\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(b&2[^ ,]*)/, "\n\t\\\\lyrics<\"9''\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(b-1[^ ,]*)/, "\n\t\\\\lyrics<\"1\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(c#1[^ ,]*)/, "\n\t\\\\lyrics<\"2''\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(d&1[^ ,]*)/, "\n\t\\\\lyrics<\"2''\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(c#2[^ ,]*)/, "\n\t\\\\lyrics<\"6''\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(c#3[^ ,]*)/, "\n\t\\\\lyrics<\"10''\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(d&2[^ ,]*)/, "\n\t\\\\lyrics<\"6''\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(d&3[^ ,]*)/, "\n\t\\\\lyrics<\"10''\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(d#1[^ ,]*)/, "\n\t\\\\lyrics<\"3''\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(d#2[^ ,]*)/, "\n\t\\\\lyrics<\"6''\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(d#3[^ ,]*)/, "\n\t\\\\lyrics<\"9''\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(e&1[^ ,]*)/, "\n\t\\\\lyrics<\"3''\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(e&2[^ ,]*)/, "\n\t\\\\lyrics<\"6''\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(e&3[^ ,]*)/, "\n\t\\\\lyrics<\"9''\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(d3[^ ,]*)/, "\n\t\\\\lyrics<\"11\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(e0[^ ,]*)/, "\n\t\\\\lyrics<\"1'\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(e3[^ ,]*)/, "\n\t\\\\lyrics<\"10'\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(f#0[^ ,]*)/, "\n\t\\\\lyrics<\"2\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(f#1[^ ,]*)/, "\n\t\\\\lyrics<\"6\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(f#2[^ ,]*)/, "\n\t\\\\lyrics<\"10\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(g&0[^ ,]*)/, "\n\t\\\\lyrics<\"2\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(g&1[^ ,]*)/, "\n\t\\\\lyrics<\"6\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(g&2[^ ,]*)/, "\n\t\\\\lyrics<\"10\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(f1[^ ,]*)/, "\n\t\\\\lyrics<\"4'\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(f2[^ ,]*)/, "\n\t\\\\lyrics<\"8'\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(e#1[^ ,]*)/, "\n\t\\\\lyrics<\"4'\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(e#2[^ ,]*)/, "\n\t\\\\lyrics<\"8'\", dy=$Ty> (\\1)", "g", line);
	line = gensub( /(g#0[^ ,]*)/, "\n\t\\\\lyrics<\"1''\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(g#3[^ ,]*)/, "\n\t\\\\lyrics<\"10''\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(a&0[^ ,]*)/, "\n\t\\\\lyrics<\"1''\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(a&3[^ ,]*)/, "\n\t\\\\lyrics<\"10''\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(g3[^ ,]*)/, "\n\t\\\\lyrics<\"12\", dy=$Py> (\\1)", "g", line);
	line = gensub( /(f##3[^ ,]*)/, "\n\t\\\\lyrics<\"12\", dy=$Py> (\\1)", "g", line);
	return line;	
}

function getAmbigu(line) {
	line = gensub( /(a0[^ ,]*)/, "\n\t\\\\lyrics<\"P2''|T3\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(a1[^ ,]*)/, "\n\t\\\\lyrics<\"P5''|T5'|T7\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(a2[^ ,]*)/, "\n\t\\\\lyrics<\"P8''|T9'|T11\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(b0[^ ,]*)/, "\n\t\\\\lyrics<\"P4|T2'\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(c&1[^ ,]*)/, "\n\t\\\\lyrics<\"P4|T2'\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(b1[^ ,]*)/, "\n\t\\\\lyrics<\"P7|T6'\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(c&2[^ ,]*)/, "\n\t\\\\lyrics<\"P7|T6'\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(b2[^ ,]*)/, "\n\t\\\\lyrics<\"P10|T10'\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(c&3[^ ,]*)/, "\n\t\\\\lyrics<\"P10|T10'\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(c1[^ ,]*)/, "\n\t\\\\lyrics<\"P3'|T4\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(c2[^ ,]*)/, "\n\t\\\\lyrics<\"P6'|T8\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(c3[^ ,]*)/, "\n\t\\\\lyrics<\"P9'|T12\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(b#0[^ ,]*)/, "\n\t\\\\lyrics<\"P3'|T4\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(b#1[^ ,]*)/, "\n\t\\\\lyrics<\"P6'|T8\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(b#2[^ ,]*)/, "\n\t\\\\lyrics<\"P9'|T12\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(d0[^ ,]*)/, "\n\t\\\\lyrics<\"P2|T1\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(d1[^ ,]*)/, "\n\t\\\\lyrics<\"P5|T3'\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(d2[^ ,]*)/, "\n\t\\\\lyrics<\"P8|T7'\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(e1[^ ,]*)/, "\n\t\\\\lyrics<\"P4'|T5\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(e2[^ ,]*)/, "\n\t\\\\lyrics<\"P7'|T9\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(g#1[^ ,]*)/, "\n\t\\\\lyrics<\"P4''|T4''\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(g#2[^ ,]*)/, "\n\t\\\\lyrics<\"P7''|T8''\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(a&1[^ ,]*)/, "\n\t\\\\lyrics<\"P4''|T4''\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(a&2[^ ,]*)/, "\n\t\\\\lyrics<\"P7''|T8''\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(g0[^ ,]*)/, "\n\t\\\\lyrics<\"P2'|P3|T1'\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(g1[^ ,]*)/, "\n\t\\\\lyrics<\"P5'|P6|T3''\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(g2[^ ,]*)/, "\n\t\\\\lyrics<\"P8'|P9|T7''\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(f##1[^ ,]*)/, "\n\t\\\\lyrics<\"P5'|P6|T3''\", dy=$Ly> (\\1)", "g", line);
	line = gensub( /(f##2[^ ,]*)/, "\n\t\\\\lyrics<\"P8'|P9|T7''\", dy=$Ly> (\\1)", "g", line);
	return line;	
}


# gestion des accords
function getNoteTab(note) {
	tmp = nonAmbiguTbl[notes[i]];
	if (length( tmp )) return tmp;
	if (MODE == 2) {
		tmp = pousseTbl[notes[i]];
		if (length( tmp )) return tmp;
		if (RANG == 1) {
			tmp =pousseTblG[notes[i]];
			if (length( tmp )) return tmp;
			else tmp = pousseTblC[notes[i]];
		}
		else if (RANG == 2) {
			tmp = pousseTblC[notes[i]];
			if (length( tmp )) return tmp;
			else tmp = pousseTblG[notes[i]];
		}
		if (length( tmp )) return tmp;		
		tmp = pousseTblU[notes[i]];
	}
	else if (MODE == 1) {
		tmp = tireTbl[notes[i]];
		if (length( tmp )) return tmp;
		if (RANG == 1) {
			tmp =tireTblG[notes[i]];
			if (length( tmp )) return tmp;
			else tmp = tireTblC[notes[i]];
		}
		else if (RANG == 2) {
			tmp =tireTblC[notes[i]];
			if (length( tmp )) return tmp;
			else tmp = tireTblG[notes[i]];
		}
		if (length( tmp )) return tmp;		
		tmp = pousseTblU[notes[i]];
	}
	if (length( tmp )) return tmp;		
	return ambiguTbl[notes[i]];
}

function getChordTabs(notes) {
	tmpsep = "";
	clyric = "";
	for (i in notes) {
		tmp = getNoteTab(notes[i]);
		clyric = clyric tmpsep tmp;
		if (length(clyric)) tmpsep = "\\n";
		else if (!length(tmp)) break;
	}
	return clyric;
}

function getchord(line) {
	chord = gensub(/[{ \t|}]/, "", "g", line);
	chord = gensub(/[*/][^,]*/, "", "g", chord);
	line = gensub(/^[ 	]*/, "", "g", line);
	line = gensub(/[ 	]*$/, "", "g", line);
	split(chord, notes, ",")
	ly = getChordTabs(notes);
	if (length(ly)) {
		if (MODE == 2)
			dy = "$chordyP";
		else 
			dy = "$chordyT";	
		return "\t\\lyrics<\"" ly "\", dy="dy ", fsize=$chordSize>("line")";
	}
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

function tabmode(mode, rang) {
	switch (mode) {
		case "T":
			MODE = 1;
			break;
		case "P":
			MODE = 2;
			break;
		default:
			MODE = 0;
	}
	switch (rang) {
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


BEGIN {
	initTbl();
	START=0;
	MODE=0;
	RANG=0;
}

END {
}

################# 
/^\{[ 	]*$/ { print $0; }

/\[/ { 
	START = 1;
	print $0;
}

# /^]/ { print $0; }

/^%[ 	]+tab/ {
	tabmode($3, $4);
}

/^%.*/ {
	print $0;
}

/^[^%][ \t]*..*/ {
	if (START) {
		if (index($0, "{")) {
# print "% chord" $0;
			print getchord($0);
		}
		else {
# print "% notes" $0;
			print gettab($0);
		}
	}
	else print $0;
}

/^$/ {
	print "";
}

/][ 	]*$/ { 
	print ",";
	print "[";
	print "\\set<autoEndBar=\"off\">";
	print "\\staffFormat<\"1-line\", distance=$dist> \\clef<\"none\">"; 
	print "\\instr<\"P\", fsize=16pt, dx=-10, dy=1.5>";
	print "\\instr<\"T\", fsize=16pt, dx=-14.5, dy=-5>";
	print "]";
	print "}";
}


