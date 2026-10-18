
const scale = [
    { "name": "c", "next": [ "d&", "d", "d#" ] },
    { "name": "d", "next": [ "e&", "e", "e#" ] },
    { "name": "e", "next": [ "f", "f#", "f##" ] },
    { "name": "f", "next": [ "g&", "g", "g#" ] },
    { "name": "g", "next": [ "a&", "a", "a#" ] },
    { "name": "a", "next": [ "b&", "b", "b#" ] },
    { "name": "b", "next": [ "c2", "c#2", "c##2" ] },

    { "name": "c#", "next": [ "d", "d#", "d##" ] },
    { "name": "d#", "next": [ "e", "e#", "e##" ] },
    { "name": "e#", "next": [ "f#", "g", "g#" ] },
    { "name": "f#", "next": [ "g", "g#", "g##" ] },
    { "name": "g#", "next": [ "a", "a#", "a##" ] },
    { "name": "a#", "next": [ "b", "b#", "b##" ] },
    { "name": "b#", "next": [ "c#2", "c##2", "d#" ] },

    { "name": "c&", "next": [ "d&&", "d&", "d" ] },
    { "name": "d&", "next": [ "e&&", "e&", "e" ] },
    { "name": "e&", "next": [ "f&", "f", "f#" ] },
    { "name": "e&&", "next": [ "f&&", "f&", "f" ] },
    { "name": "f&", "next": [ "g&&", "g&", "g" ] },
    { "name": "g&", "next": [ "a&&", "a&", "a" ] },
    { "name": "a&", "next": [ "b&&", "b&", "b" ] },
    { "name": "b&", "next": [ "c&2", "c2", "c#2" ] },
    { "name": "b&&", "next": [ "b&", "c&2", "c2" ] }
];

const modes = [
    { "name": "Ionien",     "scale": "| | / | | | /" },
    { "name": "Dorien",     "scale": "| / | | | / |" },
    { "name": "Phrygien",   "scale": "/ | | | / | |" },
    { "name": "Lydien",     "scale": "| | | / | | /" },
    { "name": "Mixolydien", "scale": "| | / | | / |" },
    { "name": "Éolien",    "scale": "| / | | / | |" },
    { "name": "Locrien",    "scale": "/ | | / | | |" },
];

//------------------------------------------------
function next(note, i) {
    let n = scale.find( (a) => { return a.name == note } )
    if (n) return n.next[i];
    console.error ("cannot find note", note);
}

//------------------------------------------------
function instance(m) {
    let note = "c"
    let out = note;
    for (let i=0; i<m.length; i+=2) {
        let interval = (m[i] == '/' ? 0 : 1);
//console.log ("next", note, m[i], interval)
        note = next(note, interval)
        out += ' ' + note;
    }
    return out;
}
//------------------------------------------------
function binstance(m) {
    let note = "a"
    let out = "";
    for (let i=0; i<m.length; i+=2) {
        let dur = (m[i] == '/' ? '/4.' : '/4');
        out += ' ' + note + dur;
    }
    return out;
}

//------------------------------------------------
function allmodes(rythm=false) {
    let result = [];

    for (let i = 0; i < 7; i++) {
        for (let j = i + 1; j < 7; j++) {
            const tab = Array(7).fill('| ');
            tab[i] = '/ ';
            tab[j] = '/ ';
            let std= false;
            if (!rythm) {
                let dist = j - i;
                std = ((dist == 3) || (dist == 4)) ? true : false;
            }
            else std = result.length === 2 || result.length === 13
            result.push({ mode: tab.join(''), std: std } );
        }
    }
    return result;
}

//------------------------------------------------
function fact (m) {
    return m > 0 ? m * fact(m-1) : 1
}

//------------------------------------------------
function display (m) {
    m.forEach(item => {
        console.log ((item.std ? "* " : "  ") + item.mode, instance(item.mode));
    })
}

//------------------------------------------------
function bossa (m) {
    m.forEach(item => {
        console.log (item.mode, binstance(item.mode));
    })
}

const nl = "\n\t";
const meter = '\\meter<"8/4"> ';
//------------------------------------------------
function format(item) {
    let g = instance(item.mode);
    if (item.std) {
        let imode = item.mode.trim();
        let m = modes.find( (a) => { return a.scale == imode })
        let instr = m ? '\\instr<"' + m.name + '", autopos="on", dx=-9, color="blue">' + nl : ''
        return instr + "\\noteFormat<color='blue'>(" + g + ")";
    }
    return g;
}

//------------------------------------------------
function bformat(item) {
    // console.log("bformat", item)
    let g =  meter + binstance(item.mode);
    return g;
}

//------------------------------------------------
function ref(i) {
    let note = "f/4";
    let notes = note;
    let format = '\\noteFormat<color="lightgrey", size=0.8> '
    for (let i=0; i <7; i++)
        notes += " " + note;
    return '\n\t[ \\staff<' + i + '> \\stemsDown ' + format + meter + notes + ']';
}


//------------------------------------------------
function gmn (m, f) {
    let r = (f === bformat);
    let out = "$FORCE = 1500;\n{\n";
    let n = m.length;
    let i = 0;
    let sep = "";
    let h = r ? 45 : 42;
    let lm = r ? 3 : 3;
    let acc = "\\pageFormat<lm=" + lm + "cm, tm=1.5cm, w=25cm, h=" + h + "cm>" + nl + '\\accol<range="1-21", dx=-1, type="none">' + nl;
    m.forEach(item => {
        i++;
        let instr = r ? '\\instr<"' + i +'", autopos="on"' + (item.std ? ', color="blue", fsize=5' : '') + '> ' : ""
        let beat  = r ? "," + ref(i) : ""
        out += sep + "[ " + acc + instr + f(item) + "]" + beat // + (i<n ? "," : "");
        acc = "\\staff<" + (i+1) + "> ";
        sep = "," + nl;
    })
    return out + "\n}";
}

//------------------------------------------------
if (typeof process === 'object') {
    var what = process.argv[2];
    if (what == 'score')
        console.log (gmn (allmodes(), format));
    else if (what == 'bossa')
        console.log (gmn (allmodes(true), bformat));
    else
        display (allmodes());
}
else {
}
