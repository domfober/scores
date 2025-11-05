
var gState = {
    map: claviers.r3b18.Heim,
    show: getMinorChord
};

//--------------------------------------------
function setMode(mode) {
    switch (mode) {
		case "GMaj":    majorscale(); break;
		case "GMin":    minorscale(); break;
		case "GPenta":  pentascale(); break;
		case "AMaj":    majorchord(false); break;
		case "AMin":    minorchord(false); break;
		case "AMaj7":   majorchord(true); break;
		case "AMin7":   minorchord(true); break;
		case "Dim":     dimchord(); break;
    }
    modeInfo(gState.show);
    localStorage.setItem('mode', mode);
}

//--------------------------------------------
function switchMode(elt) {
    let mode = elt.id;
    setMode (mode);
}

//--------------------------------------------
function getModeInfo(show) {
    let out = "Mode: ";
    if (show == getHarmMinorScale)
        return out + "gamme min. harm"
    if (show == getMajorScale)
        return out + "gamme maj."
    if (show == getPentaScale)
        return out + "gamme penta. maj"
    if (show == getMinorChord)
        return out + "accord min"
    if (show == getMajorChord)
        return out + "accord maj"
    if (show == getMinor7Chord)
        return out + "accord min 7"
    if (show == getMajor7Chord)
        return out + "accord maj 7"
    if (show == getDimChord)
        return out + "accord dim"
    return out;
}

//--------------------------------------------
function minorscale()    { gState.show = getHarmMinorScale; }
function majorscale()    { gState.show = getMajorScale; }
function pentascale()    { gState.show = getPentaScale; }
function majorchord(sev) { gState.show = sev ? getMajor7Chord : getMajorChord; }
function minorchord(sev) { gState.show = sev ? getMinor7Chord : getMinorChord; }
function dimchord()      { gState.show = getDimChord; }

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
function pull(event) { setOn (this, false); }
function push(event) { setOn (this, true); }

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
function openMenu(id) {
    let menu = document.getElementById(id);
    menu.classList.add ('show');
}
//--------------------------------------------
function closeMenu(id) {
    let menu = document.getElementById(id);
    menu.classList.remove ('show');
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
        keyboardInfo (kbd);
        localStorage.setItem ('section', section);
        localStorage.setItem ('kbd', this.id);
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

var gTouch = { x: -1, push: null } ;
//--------------------------------------------
function mouseDown(event) { gTouch.x = event.clientX;  gTouch.push = null; }
function touchDown(event) { gTouch.x = event.touches[0].clientX; gTouch.push = null; }
function mouseUp(event) { deselectAll(); gTouch.x = 0; gTouch.push = null; }

//--------------------------------------------
function move(x, target) {
    let dir = gTouch.x - x;
    let push = (hasClass(target, "bass")) ? dir <0 : dir > 0;
    let elt = getPart (target, push);
    if (gTouch.push == null) {
        setOn (elt, push);
    } else if (gTouch.push !== push) {
        deselectAll();
        setOn (elt, push);
    }
    gTouch.push = push;
}

//--------------------------------------------
function touchMove(event) { move (event.touches[0].clientX, this); }
function mouseMove(event) {
    if (gTouch.x > 0)
        move (event.clientX, this);
}
    
//--------------------------------------------
function hasAccidental(item) {
    if (item.indexOf("#") > 0) return true;
    if (item.indexOf("b") > 0) return true;
    return item.length > 1;
}

//--------------------------------------------
function makeKey(item, left) {
    let key = document.createElement('div');
    if (item.name && (item.name == "shift")) {
        let value = item.value;
        key.style.minHeight = item.value + "em";
        return key;
    }

    key.classList.add("key");
    if (left) key.classList.add("bass");
    let pct = getPitchClass(item.T.name);
    let pcp = getPitchClass(item.P.name);
    if ((pct >= 0) && (pcp >=0)) {
        key.addEventListener ('mousedown', mouseDown, {capture: true});
        key.addEventListener ('mousemove', mouseMove, {capture: true});
        key.addEventListener ('touchstart', touchDown, {passive: true});
        key.addEventListener ('touchmove', touchMove, {passive: true});
        key.addEventListener ('mouseup', mouseUp, {capture: true});
        key.addEventListener ('touchend', mouseUp, {passive: true});
     }
    let t = document.createElement('span');
    let p = document.createElement('span');
    
    if (left) {
        t.classList.add("noselect", "pull", "bass", "middle");
        p.classList.add("noselect", "push", "bass", "middle");
    }
    else {
        t.classList.add("noselect", "pull", "middle");
        p.classList.add("noselect", "push", "middle");
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
    let b4 = document.getElementById('b4')
    left.innerHTML="";
    center.innerHTML="";
    right.innerHTML="";
    b4.innerHTML="";
    makecol(map.rang1, left, true);
    makecol(map.rang2, center, true);
    if (map.rang3)
        makecol(map.rang3, right, true);
    if (map.rang4) {
        makecol(map.rang4, document.getElementById('b4'), true);
    }
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
function modeInfo (mode) {
    let div = document.getElementById('currentMode');
    div.innerHTML = getModeInfo (mode)
}

//--------------------------------------------
function create(map) {
    createKeyboard (map);
    makeKbdMenu (document.getElementById('menu'));
    keyboardInfo(map);
    modeInfo(gState.show);

    let radio = document.getElementById (getKeyboardName(map));
    if (radio) radio.checked = true;
}

//--------------------------------------------
function restore() {
    let keyb = localStorage.getItem('kbd');
    let section = localStorage.getItem('section');
    let mode = localStorage.getItem('mode');
    if (mode) {
        setMode(mode);
        let radio = document.getElementById (mode);
        if (radio) radio.checked = true;    
    }
    if (keyb && section) {
        let map = claviers[section] ? claviers[section][keyb] : null;
        if (map) gState.map = map;
    }
}

restore();
create (gState.map);
