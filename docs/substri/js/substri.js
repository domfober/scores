

//------------------------------------------------
class substriton {
    constructor (n, basenote) { 
        this.intervals = this.shift(n);
        this.name = mode.names[n];
        this.mode = n;
        this.baseNote = this.noteName2Interval(basenote);
        this.instance = this.buildinstance(basenote);
        
        let nc = this.instance[mode.ncaract[n]];
// console.log (this.name, this.mode, this.instance, nc)
        this.noteC = nc.substring(0, nc.length -1)
    }

    pageformat() {
        return "\\pageFormat<w=20cm, h=10cm, lm=0cm, rm=0cm, bm=2cm, tm=2cm> "
    }

    makeChord(elts, key) {
        let gmn = "{ ";
        let sep = "";
        elts.forEach( item => {
            let t = '\\text<"' + key + '", dy=-4, color="grey", textformat="ct">';
            gmn += sep + this.tag(item, t);
            sep= ", ";
        })
        return gmn + " } ";
    }
}

//------------------------------------------------
function guidoNote (note) {
    if (note.length == 1) return note;
    switch (note.charCodeAt(1)) {
        case 9837: return note[0] + '&'
        case 9839: return note[0] + '#'
    }
    return null;
}

//------------------------------------------------
function display (m) {
    document.getElementById('modename').innerHTML = m.name;
    console.log ("Mode", m.mode,  ":", m.name);
    console.log ("Intervalles", m.intervals);
    console.log ("Notes", m.instance);
    console.log ("Note caractéristique", m.noteCaracteristique());
    console.log ("Cadence", m.cadence());
}

//------------------------------------------------
if (typeof process === 'object') {
    var inst = process.argv[3];
    var m = new mode(parseInt(process.argv[2]), inst);
    display (m);
}
else {
}
