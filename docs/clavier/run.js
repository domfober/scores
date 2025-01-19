
function getMinorChord(pitch) {
    let out = [];
    out.push(pitch);
    out.push((pitch + 3) % 12);
    out.push((pitch + 7) % 12);
    return out;
}

function getMinor7Chord(pitch) {
    let out = [];
    out.push(pitch);
    out.push((pitch + 3) % 12);
    out.push((pitch + 7) % 12);
    out.push((pitch + 10) % 12);
    return out;
}

function getMajorChord(pitch) {
    let out = [];
    out.push(pitch);
    out.push((pitch + 4) % 12);
    out.push((pitch + 7) % 12);
    return out;
}

function getMajor7Chord(pitch) {
    let out = [];
    out.push(pitch);
    out.push((pitch + 4) % 12);
    out.push((pitch + 7) % 12);
    out.push((pitch + 10) % 12);
    return out;
}

function getHarmMinorScale(pitch) {
    let out = [];
    out.push(pitch);
    out.push((pitch + 2) % 12);
    out.push((pitch + 3) % 12);
    out.push((pitch + 5) % 12);
    out.push((pitch + 7) % 12);
    out.push((pitch + 8) % 12);
    out.push((pitch + 11) % 12);
    return out;
}

function getMajorScale(pitch) {
    let out = [];
    out.push(pitch);
    out.push((pitch + 2) % 12);
    out.push((pitch + 4) % 12);
    out.push((pitch + 5) % 12);
    out.push((pitch + 7) % 12);
    out.push((pitch + 9) % 12);
    out.push((pitch + 11) % 12);
    return out;
}

var gShow = getHarmMinorScale;
var gScale = getHarmMinorScale;
var gChord = getMajorChord;
var gKbd   = claviers.heim;

//--------------------------------------------
function scalemode() {
    document.getElementById("chord").style.visibility = "hidden";
    document.getElementById("scale").style.visibility = "visible";
    gShow = gScale;
}

//--------------------------------------------
function chordmode() {
    document.getElementById("scale").style.visibility = "hidden";
    document.getElementById("chord").style.visibility = "visible";
    gShow = gChord;
}

//--------------------------------------------
function minorscale() {
    gScale = getHarmMinorScale;
    gShow = gScale;
}

//--------------------------------------------
function majorscale() {
    gScale = getMajorScale;
    gShow = gScale;
}

//--------------------------------------------
function majorchord(sev) {
    gChord = sev ? getMajor7Chord : getMajorChord;
    gShow = gChord;
}

//--------------------------------------------
function minorchord(sev) {
    gChord = sev ? getMinor7Chord : getMinorChord;
    gShow = gChord;
}

//--------------------------------------------
function mouseDown(event) {
    let show = gShow (parseInt(this.getAttribute("name")));
    show.forEach ( item => {
        let keys = document.getElementsByName(item);
        keys.forEach( k => {
            k.classList.add("on");
        })
    })
}

//--------------------------------------------
function mouseUp(event) {
   let elts = document.getElementsByClassName ("on")
   let n = elts.length;
   for (i=n-1; i >=0; i--) {
    let item = elts[i];
    item.classList.remove("on");
   }
}

//--------------------------------------------
function setkeys(mode) {
    switch (mode) {
        case 'heim': gKbd   = claviers.heim;
            break;
        case 'mill': gKbd   = claviers.milleret;
            break;
        case 'chrom': gKbd   = claviers.chroma;
            break;
        case 'chrom2': gKbd   = claviers.chroma2;
            break;
    }
    create(gKbd)
}

//--------------------------------------------
function makecol(list, id) {
    let out = document.createElement('div');
    out.setAttribute("id", id);
    list.forEach (item => {
        let key = document.createElement('div');
        key.classList.add("key");
        key.setAttribute("name", item.pitch);
        key.addEventListener ('mousedown', mouseDown);
        key.addEventListener ('mouseup', mouseUp);
        key.addEventListener ('touchstart', mouseDown);
        key.addEventListener ('touchend', mouseUp);
        key.innerText = item.name;
        out.appendChild(key);
    })
    return out;
}

//--------------------------------------------
function create(keys) {
    let left = document.getElementById('left');
    let center = document.getElementById('center')
    let right = document.getElementById('right')
    let leftdiv = makecol(keys.rang3, "left");
    let centerdiv = makecol(keys.rang2, "center");
    let rightdiv = makecol(keys.rang1, "right");
    left.innerHTML="";
    center.innerHTML="";
    right.innerHTML="";
    left.appendChild (leftdiv);
    center.appendChild (centerdiv);
    right.appendChild (rightdiv);
}

create (gKbd);
