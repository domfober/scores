
var gState = {
    map: claviers.r3b18.Heim,
    chord: getMajorChord,
    scale: getHarmMinorScale,
    show: getMinorChord
};

//--------------------------------------------
function scalemode() {
    document.getElementById("chord").style.visibility = "hidden";
    document.getElementById("scale").style.visibility = "visible";
    gState.show = gState.scale;
}

//--------------------------------------------
function chordmode() {
    document.getElementById("scale").style.visibility = "hidden";
    document.getElementById("chord").style.visibility = "visible";
    gState.show = gState.chord;
}

//--------------------------------------------
function minorscale() {
    gState.scale = getHarmMinorScale;
    gState.show = gState.scale;
}

//--------------------------------------------
function majorscale() {
    gState.scale = getMajorScale;
    gState.show = gState.scale;
}

//--------------------------------------------
function pentascale() {
    gState.scale = getPentaScale;
    gState.show = gState.scale;
}

//--------------------------------------------
function majorchord(sev) {
    gState.chord = sev ? getMajor7Chord : getMajorChord;
    gState.show = gState.chord;
}

//--------------------------------------------
function minorchord(sev) {
    gState.chord = sev ? getMinor7Chord : getMinorChord;
    gState.show = gState.chord;
}

//--------------------------------------------
function hasClass (elt, name) {
    let i = elt.className.indexOf (name);
    return i >= 0;
}

//--------------------------------------------
function setOn(elt, push) {
    let show = gState.show (parseInt(elt.getAttribute("name")));
    show.forEach ( item => {
        let keys = document.getElementsByName(item);
        keys.forEach( k => {
            if (hasClass(k, push ? "push" : "pull")) {
//                console.log ("setOn", k.parentElement, push);
                k.parentElement.classList.add(push ? "pushOn" : "pullOn");
            }
        })
    })
}

//--------------------------------------------
function pull(event) {
    setOn (this, false);
}

//--------------------------------------------
function push(event) {
    setOn (this, true);
}

//--------------------------------------------
function deselectAll() {
    let elts = document.getElementsByClassName ("pullOn")
    for (i=elts.length-1; i >=0; i--)
        elts[i].classList.remove("pullOn");
    elts = document.getElementsByClassName ("pushOn")
    for (i=elts.length-1; i >=0; i--)
        elts[i].classList.remove("pushOn");
}

//--------------------------------------------
function mouseUp(event) {
    deselectAll();
}
//--------------------------------------------
function setKeyboard()
{
    let section = this.getAttribute('section');
// console.log("setKeyboard", section)
    let kbd = claviers[section][this.id];
    if (kbd) {        
        gState.map = kbd;
        createKeyboard (kbd);
    }
    else console.error ("unknown keyboard id:", this.id );
}

//--------------------------------------------
function getPart(div, push) {
    for (const child of div.children) {
        if (hasClass(child, push ? "push" : "pull")) return child;
    }
    return null;
}

//--------------------------------------------
function leftClick(event, elt) {
    let rect = elt.getBoundingClientRect();
    let mid = (rect.right - rect.left) / 2; 
    return (event.clientX - rect.left) < mid; 
}

//--------------------------------------------
function mouseDown(event) {
    let push = leftClick(event, this); 
    let elt = getPart (this, push);
    setOn (elt, push);
}

var gTouch = { x: -1, push: null } ;
//--------------------------------------------
function touchDown(event) {
    gTouch.x = event.touches[0].clientX;
    gTouch.push = null;
}

//--------------------------------------------
function touchMove(event) {
    let push = gTouch.x > event.touches[0].clientX;
    let elt = getPart (this, push);
    if (gTouch.push == null) {
        setOn (elt, push);
    } else if (gTouch.push !== push) {
        deselectAll();
        setOn (elt, push);
    }
    gTouch.push = push;
}

//--------------------------------------------
function mouseOver(event) {
    let curs = leftClick(event, this) ? 'w-resize' : 'e-resize';
    document.body.style.cursor = curs;
}

//--------------------------------------------
function mouseLeave(event) {
    document.body.style.cursor = 'initial';
}
    
//--------------------------------------------
function hasAccidental(item) {
    if (item.indexOf("#") > 0) return true;
    if (item.indexOf("b") > 0) return true;
    return item.length > 1;
}

//--------------------------------------------
function ignoreEvents(elt) {
    elt.addEventListener ('mousedown', null, {capture: false});
    elt.addEventListener ('mouseup', null, {capture: false});
    elt.addEventListener ('touchstart', null, {passive: true});
    elt.addEventListener ('touchend', null, {passive: true});
}

//--------------------------------------------
function makeKey(item, left) {
    let key = document.createElement('div');
    key.classList.add("key");
    let pct = getPitchClass(item.T.name);
    let pcp = getPitchClass(item.P.name);
    if ((pct >= 0) && (pcp >=0)) {
        key.addEventListener ('mousedown', mouseDown, {capture: true});
        key.addEventListener ('touchstart', touchDown, {passive: true});
        key.addEventListener ('touchmove', touchMove, {passive: true});
        key.addEventListener ('mouseup', mouseUp, {capture: true});
        key.addEventListener ('touchend', mouseUp, {passive: true});
        key.addEventListener ('mouseover', mouseOver, {capture: true});
        key.addEventListener ('mouseleave', mouseLeave, {capture: true});
    }
    let t = document.createElement('span');
    let p = document.createElement('span');
    
    if (left) {
        t.classList.add("noselect", "push", "bass");
        p.classList.add("noselect", "pull", "bass");
    }
    else {
        t.classList.add("noselect", "pull");
        p.classList.add("noselect", "push");
    }
    if (hasAccidental (item.T.name)) t.classList.add("acc");
    if (hasAccidental (item.P.name)) p.classList.add("acc");
    t.setAttribute("name", getPitchClass(item.T.name));
    p.setAttribute("name", getPitchClass(item.P.name));
    t.innerText = item.T.name;
    p.innerText = item.P.name;
    if (left) {
        key.appendChild(t);
        key.appendChild(p);
    }
    else {
        key.appendChild(p);
        key.appendChild(t);
    }
    return key;
}

//--------------------------------------------
function makecol(list, div, left) {
    list.forEach (item => {
        div.appendChild(makeKey(item, left));
    })
}

//--------------------------------------------
function createRightHand(map) {
//console.log ("createRightHand", map);
    let left = document.getElementById('left');
    let center = document.getElementById('center')
    let right = document.getElementById('right')
    left.innerHTML="";
    center.innerHTML="";
    right.innerHTML="";
    makecol(map.rang3, left, false);
    makecol(map.rang2, center, false);
    makecol(map.rang1, right, false);
}

//--------------------------------------------
function createLeftHand(map) {
    //console.log ("createLeftHand", map);
    let left = document.getElementById('bleft');
    let center = document.getElementById('bcenter')
    let right = document.getElementById('bright')
    left.innerHTML="";
    center.innerHTML="";
    right.innerHTML="";
    makecol(map.rang1, left, true);
    makecol(map.rang2, center, true);
    makecol(map.rang3, right, true);
}

//--------------------------------------------
function createKeyboard(map) {
    createLeftHand (map.gauche);
    createRightHand (map.droite);
}

//--------------------------------------------
function keyboardInfo(map) {
    let div = document.getElementById('currentKbd');
    div.innerHTML = getKeyboardInfo (map)
}

//--------------------------------------------
function create(map) {
    createKeyboard (map);
    makeKbdMenu (document.getElementById('menu'));
    keyboardInfo(map);
}

create (gState.map);
