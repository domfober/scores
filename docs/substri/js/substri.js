
const toDegre = {
    'C': 0,
    'C#': 1,
    'Db': 1,
    'D': 2,
    'D#': 3,
    'Eb': 3,
    'E': 4,
    'F&': 4,
    'F': 5,
    'D': 2,
    
}

//------------------------------------------------
class substriton {
    constructor (chordStr, enharm=true) { 
        let baseNote = this.parseNote (chordStr);
        if (baseNote) {
            let subst = this.makeSubsChord (baseNote, enharm);
console.log(baseNote, subst);
        }
        else console.error (chordStr, ": incorrect chord for substitution")
    }

    parseNote (note) {
        let a = note.split(/7/);
        return (a.length == 2) ? a[0] : null;
    }

    enharm (note, subs, enharm) {
        return enharm ? subs + ' (' + note + ')' : note + ' (' + subs + ')';
    }

    shiftNote (note, count) {
        let n = note.charCodeAt(0) + count ;
//console.log(note, note.charCodeAt(0), n);
        if (n > 71) n -= 7;
        else if (n < 65) n += 7;
        return String.fromCharCode(n);
    }

    makeSubsChord (note, enharm) {
        // let n = note.charCodeAt(0) + 4 ;
        // if (n > 71) n -= 7;
        let alt = note[1] ;
//        let subs = String.fromCharCode(n);
        let subs = this.shiftNote(note, 4);
        if (!alt) {
            if (subs == 'F')
                return this.enharm (subs + 'b', 'E', enharm)
            else if (subs == 'C')
                return this.enharm (subs + 'b', 'B', enharm)
            else
                return subs + 'b';
        }
        else if (alt == '#') {}
        else if (alt == 'b') {
            let en = this.shiftNote (subs, -1)
            if (en == 'E') en += 'b';
            else if (en == 'B') en += 'b';

//            subs += 'bb';
            return this.enharm (subs + 'bb', en, enharm)
        }
        else return null
        return subs
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
    let enharm = process.argv[3] == 'true' ? true : false;
    var m = new substriton(process.argv[2], enharm);
//    display (m);
}
else {
}
