
var scale = [
    { "name": "c", "next": [ "d&", "d", "d#" ] },
    { "name": "d", "next": [ "e&", "e", "e#" ] },
    { "name": "e", "next": [ "f", "f#", "f##" ] },
    { "name": "f", "next": [ "g&", "g", "g#" ] },
    { "name": "g", "next": [ "a&", "a", "a#" ] },
    { "name": "a", "next": [ "b&", "b", "b#" ] },
    { "name": "b", "next": [ "c", "c#", "c##" ] },

    { "name": "c#", "next": [ "d", "d#", "d##" ] },
    { "name": "d#", "next": [ "e", "e#", "e##" ] },
    { "name": "e#", "next": [ "f#", "g", "g#" ] },
    { "name": "f#", "next": [ "g", "g#", "g##" ] },
    { "name": "g#", "next": [ "a", "a#", "a##" ] },
    { "name": "a#", "next": [ "b", "b#", "b##" ] },
    { "name": "b#", "next": [ "c#", "c##", "d#" ] },

    { "name": "c&", "next": [ "d&&", "d&", "d" ] },
    { "name": "d&", "next": [ "e&&", "e&", "e" ] },
    { "name": "e&", "next": [ "f&", "f", "f#" ] },
    { "name": "f&", "next": [ "g&&", "g&", "g" ] },
    { "name": "g&", "next": [ "a&&", "a&", "a" ] },
    { "name": "a&", "next": [ "b&&", "b&", "b" ] },
    { "name": "b&", "next": [ "c&", "c", "c#" ] },
    { "name": "b&&", "next": [ "b&", "c&", "c" ] }
];

//------------------------------------------------
class mode {
    static names = [ "Ionien", "Dorien", "Phrygien", "Lydien", "Mixolydien", "Éolien", "Locrien" ];
    static ncaract = [ 3, 5, 1, 3, 6, 5, 4 ];   // notes caractéristiques des modes par degré (-1)
    static baseIntervals = [ 2, 2, 1, 2, 2, 2, 1 ];
    intervals = [];
    instance = [];
    name = null;
    mode = 0;
    baseNote = 0;
    noteC = 0;
    
    constructor (n, basenote) { 
        this.intervals = this.shift(n);
        this.name = mode.names[n];
        this.mode = n;
        this.baseNote = this.noteName2Interval(basenote);
        this.instance = this.buildinstance(basenote);
        
        let nc = this.instance[mode.ncaract[n]];
console.log (this.name, this.mode, this.instance, nc)
        this.noteC = nc.substring(0, nc.length -1)
    }

    shift (n) {
        let out = mode.baseIntervals.slice(n);
        for (let i = 0; i<n; i++) {
            out.push (mode.baseIntervals[i])
        }
        return out;
    }

    noteName2Interval (name) {
        switch (name) {
            case "c" :  return 0;
            case "c#":
            case "d&":  return 1;
            case "d":   return 2;
            case "d#":
            case "e&":  return 3;
            case "e":   return 4;
            case "f":   return 5;
            case "f#":
            case "g&":  return 6;
            case "g":   return 7;
            case "g#":
            case  "a&": return 8;
            case "a":   return 9;
            case "a#":
            case "b&":  return 10;
            case "b":   return 11;
        }
        return -1;
    }

    findNote (name, tbl) {
        for (let i=0; i<tbl.length; i++) {
            if (tbl[i].name == name) return tbl[i]
        }
        return null;
    }

    nextNote (name, interval, oct=1) {
        let note = this.findNote (name, scale)
// console.log ("nexNote", name, interval, scale);
        if (note) {
            let next = note.next[interval];
            if (next) {
                if (next[0] == 'c') oct++;
                return { note: next, oct: oct };
            }
        }
        return null;
    }

    noteName (n) {
        let sharplist = [ "c", "c#", "d", "d#", "e", "f", "f#", "g", "g#", "a", "a#", "b"];
        let flatlist  = [ "c", "d&", "d", "e&", "e", "f", "g&", "g", "a&", "a", "b&", "b"];
        return  this.sharp ? sharplist[n % 12] : flatlist[n % 12];
    }

    noteCaracteristique () {
        return  this.noteC; // m.noteName(this.noteC + this.baseNote);
    }

    getChord (base) {
        let degres = [ "I", "II", "III", "IV", "V", "VI", "VII"];
        let index = -1;
        for (let i = 0; (i < this.instance.length) && (index < 0); i++) {
            let cur = this.instance[i];
            if (cur.substring(0, cur.length - 1) == base) index = i;
        }
        if (index >= 0 && index < 7) {
            let deg = degres[index];
            let out = {};
            let cnotes = [this.instance[index], this.instance[(index+2)%7],this.instance[(index+4)%7]];
            if (cnotes[0].indexOf('#') > 0)
                deg = '#' + deg;
            else if (cnotes[0].indexOf('&') > 0)
                deg = 'b' + deg;
            out[deg] = cnotes;
            return out;
        }
        return null;        
    }

    cadence () {
        let a1 = this.instance[0];
        let a2 = this.noteCaracteristique();
        let a3 = this.instance[6];
        let out = [];
        out.push ( this.getChord(a1.substring(0, a1.length - 1)));
        out.push ( this.getChord(a3.substring(0, a3.length - 1)));
        if (a2 != a3.substring(0, a3.length - 1)) {
            out.push ( this.getChord(a2));
        }
        return out;
    }

    buildinstance (baseNote) {
        let out = [];
        let oct = 1;
        let n = baseNote;
        out.push (n + oct);
        for (let i=0; i<8; i++) {
            n = this.nextNote (n, this.intervals[i]-1, oct)
            if (n) {
                out.push (n.note + n.oct);
                oct = n.oct;
                n = n.note;
            }
            else break;
        }
        return out;
    }

    toGuidoMode () {
        let gmn = "[ ";
        this.instance.forEach( item => {
            let n = item.substring(0, item.length-1)
            if (n == this.noteCaracteristique())
                gmn += '\\noteFormat<color="red">(' + item +  ") ";
            else
                gmn += item +  " ";
        });
        return gmn + "]";
    }

    makeChord(elts) {
        let gmn = "{ ";
        let sep = "";
        elts.forEach( item => {
            gmn += sep + item;
            sep= ", ";
        })
        return gmn + " } ";
    }

    toGuidoCadence () {
        let gmn = "[ \\space<3mm> ";
        this.cadence().forEach( item => {
            let keys = Object.keys(item);
            gmn += this.makeChord (item[keys[0]]);            
        });
        return gmn + "]";
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
function changeMode () {
    let mod = document.getElementById('mode').selectedIndex;
    let base = document.getElementById('base').value;
    console.log ("changeMode", mod , guidoNote(base))
    let m = new mode(mod, guidoNote(base))
    let scale = m.toGuidoMode();
    let cad = m.toGuidoCadence();
    console.log ("changeMode", mod , guidoNote(base), scale, cad)
    display (m);
    document.getElementById('scale').textContent = scale;
    document.getElementById('cadence').textContent = cad;
    processGMNCode();
}

//------------------------------------------------
function display (m) {
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
// else changeMode();
