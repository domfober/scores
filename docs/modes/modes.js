
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
    { "name": "Aéolien",    "scale": "| / | | / | |" },
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
function allmodes() {
    let result = [];

    for (let i = 0; i < 7; i++) {
        for (let j = i + 1; j < 7; j++) {
            const tab = Array(7).fill('| ');
            tab[i] = '/ ';
            tab[j] = '/ ';
            let dist = j - i;
//console.log ("d:", dist)
            let std = ((dist == 3) || (dist == 4)) ? true : false;
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

const nl = "\n\t";
//------------------------------------------------
function format(item) {
    let g = instance(item.mode);
    if (item.std) {
        let imode = item.mode.trim();
        let m = modes.find( (a) => { return a.scale == imode })
        let instr = m ? '\\instr<"' + m.name + '", autopos="on", dx=-3, color="blue">' + nl : ''
        return instr + "\\noteFormat<color='blue'>(" + g + ")";
    }
    return g;
}

//------------------------------------------------
function gmn (m) {
    let out = "{";
    let n = m.length;
    let i = 0;
    let acc = "\\pageFormat<lm=6cm, tm=1.5cm, w=25cm, h=42cm>" + nl + '\\accol<range="1-21", dx=-1, type="none">' + nl;
    m.forEach(item => {
//        let g = instance(item.mode);
        i++;
        out += nl + "[ " + acc + format(item) + "]" + (i<n ? "," : "");
        acc = "";
    })
    return out + "}";
}

//------------------------------------------------
if (typeof process === 'object') {
    var what = process.argv[2];
//    var m = fact(parseInt(process.argv[2]), inst);
//    console.log ("7!/2!5!", fact(7) / (fact(2) * fact(5)));
    if (what == 'score')
        console.log (gmn (allmodes()));
    else
        display (allmodes());
}
else {
}
