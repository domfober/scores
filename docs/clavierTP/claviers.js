const darwinbshift = 2.4;
const claviers = {
  r3b18 : {
    Heim : {
      default: true,
      droite : {
          rang3 : [
            { T: { name: "C#"}, P: { name: "F"} },
            { T: { name: "Bb"}, P: { name: "Eb"} },
            { T: { name: "G#"}, P: { name: "G#"} },
            { T: { name: "Eb"}, P: { name: "F"} },
            { T: { name: "C#"}, P: { name: "Eb"} },
            { T: { name: "Bb"}, P: { name: "G#"} },
            { T: { name: "G#"}, P: { name: "F"} },
            { T: { name: "Eb"}, P: { name: "Eb"} },
            { T: { name: "C#"}, P: { name: "G#"} },
            { T: { name: "Bb"}, P: { name: "F"} }
          ],
          rang2 : [ 
            { T: { name: "D"}, P: { name: "A"} },
            { T: { name: "B"}, P: { name: "E"} },
            { T: { name: "G"}, P: { name: "C"} },
            { T: { name: "F"}, P: { name: "A"} },
            { T: { name: "D"}, P: { name: "E"} },
            { T: { name: "B"}, P: { name: "C"} },
            { T: { name: "G"}, P: { name: "A"} },
            { T: { name: "F"}, P: { name: "E"} },
            { T: { name: "D"}, P: { name: "C"} },
            { T: { name: "B"}, P: { name: "A"} },
            { T: { name: "G"}, P: { name: "E"} }
          ],
          rang1 : [ 
            { T: { name: "C"},  P: { name: "G"} },
            { T: { name: "A"},  P: { name: "D"} },
            { T: { name: "F#"}, P: { name: "B"} },
            { T: { name: "E"},  P: { name: "G"} },
            { T: { name: "C"},  P: { name: "D"} },
            { T: { name: "A"},  P: { name: "B"} },
            { T: { name: "F#"}, P: { name: "G"} },
            { T: { name: "E"},  P: { name: "D"} },
            { T: { name: "C"},  P: { name: "B"} },
            { T: { name: "A"},  P: { name: "G"} },
            { T: { name: "F#"}, P: { name: "D"} },
            { T: { name: "E"},  P: { name: "B"} }
          ]
      },
      gauche : {
          rang3 : [
            { T: { name: "C"},  P: { name: "D"} },
            { T: { name: "Ab"}, P: { name: "A"} },
            { T: { name: "E"},  P: { name: "B"} },
            { T: { name: "F#"}, P: { name: "F#"} },
            { T: { name: "C#"}, P: { name: "C#"} },
            { T: { name: "Eb"}, P: { name: "Bb"} }
          ],
          rang2 : [ 
            { T: { name: "F"},  P: { name: "F"} },
            { T: { name: "f"},  P: { name: "f"} },
            { T: { name: "A"},  P: { name: "E"} },
            { T: { name: "a"},  P: { name: "e"} },
            { T: { name: "Bb"}, P: { name: "Eb"} },
            { T: { name: "bb"}, P: { name: "eb"} }
          ],
          rang1 : [ 
            { T: { name: "G"}, P: { name: "C"} },
            { T: { name: "g"}, P: { name: "c"} },
            { T: { name: "D"}, P: { name: "G"} },
            { T: { name: "d"}, P: { name: "g"} },
            { T: { name: "B"}, P: { name: "G#"} },
            { T: { name: "b"}, P: { name: "g#"} }
          ]
      }
    },
    Milleret_Pignol : {
      droite: {
        rang3 : [
            { T: { name:'C'}, P: { name: "F#"} }, 
            { T: { name:'C#'}, P: { name: "F"} }, 
            { T: { name:'Bb'}, P: { name: "Eb"} }, 
            { T: { name:'G'},  P: { name: "F#"} }, 
            { T: { name:'Eb'}, P: { name: "F"} }, 
            { T: { name:'C#'}, P: { name: "Eb"} }, 
            { T: { name:'Bb'}, P: { name: "F#"} }, 
            { T: { name:'G'},  P: { name: "F"} }, 
            { T: { name:'Eb'}, P: { name: "Eb"} }, 
            { T: { name:'C#'}, P: { name: "F#"} }, 
            { T: { name:'Bb'}, P: { name: "F"} }
        ],
        rang2 : [ 
            { T: { name:'D'},  P: { name: "G"} }, 
            { T: { name:'B'},  P: { name: "E"} }, 
            { T: { name:'G#'}, P: { name: "C"} }, 
            { T: { name:'F'},  P: { name: "A"} }, 
            { T: { name:'D'},  P: { name: "E"} }, 
            { T: { name:'B'},  P: { name: "C"} }, 
            { T: { name:'G#'}, P: { name: "A"} }, 
            { T: { name:'F'},  P: { name: "E"} }, 
            { T: { name:'D'},  P: { name: "C"} }, 
            { T: { name:'B'},  P: { name: "A"} }, 
            { T: { name:'G#'}, P: { name: "Bb"} },
            { T: { name:'G'},  P: { name: "E"} }
        ],
        rang1 : [ 
            { T: { name:'A'},  P: { name: "D"} }, 
            { T: { name:'F#'}, P: { name: "B"} }, 
            { T: { name:'E'},  P: { name: "G"} }, 
            { T: { name:'C'},  P: { name: "D"} }, 
            { T: { name:'A'},  P: { name: "B"} }, 
            { T: { name:'F#'}, P: { name: "G"} }, 
            { T: { name:'E'},  P: { name: "D"} }, 
            { T: { name:'C'},  P: { name: "B"} }, 
            { T: { name:'A'},  P: { name: "G"} }, 
            { T: { name:'F#'}, P: { name: "D"} },
            { T: { name:'E'},  P: { name: "C#"} }
        ]
	    },
	    gauche : {
          rang3 : [
            { T: { name: "Eb"}, P: { name: "Bb"} },
            { T: { name: "G#"}, P: { name: "B"} },
            { T: { name: "C"},  P: { name: "D"} },
            { T: { name: "F#"}, P: { name: "F#"} },
            { T: { name: "C#"}, P: { name: "C#"} },
            { T: { name: "E"},  P: { name: "A"} }
          ],
          rang2 : [ 
            { T: { name: "B"},  P: { name: "G#"} },
            { T: { name: "b"},  P: { name: "g#"} },
            { T: { name: "F"},  P: { name: "F"} },
            { T: { name: "f"},  P: { name: "f"} },
            { T: { name: "A"},  P: { name: "E"} },
            { T: { name: "a"},  P: { name: "e"} }
          ],
          rang1 : [ 
            { T: { name: "Bb"}, P: { name: "Eb"} },
            { T: { name: "bb"}, P: { name: "eb"} },
            { T: { name: "G"}, P: { name: "C"} },
            { T: { name: "g"}, P: { name: "c"} },
            { T: { name: "D"}, P: { name: "G"} },
            { T: { name: "d"}, P: { name: "g"} }
          ]
      }
    },
    Mignol : {
      droite: {
        rang3 : [
            { T: { name:'C'}, P: { name: "F#"} }, 
            { T: { name:'C#'}, P: { name: "F"} }, 
            { T: { name:'Bb'}, P: { name: "Eb"} }, 
            { T: { name:'G'},  P: { name: "F#"} }, 
            { T: { name:'Eb'}, P: { name: "F"} }, 
            { T: { name:'C#'}, P: { name: "Eb"} }, 
            { T: { name:'Bb'}, P: { name: "G#"} }, 
            { T: { name:'G'},  P: { name: "F"} }, 
            { T: { name:'Eb'}, P: { name: "Eb"} }, 
            { T: { name:'C#'}, P: { name: "F#"} }, 
            { T: { name:'Bb'}, P: { name: "F"} }
        ],
        rang2 : [ 
            { T: { name:'D'},  P: { name: "G"} }, 
            { T: { name:'B'},  P: { name: "E"} }, 
            { T: { name:'G#'}, P: { name: "C"} }, 
            { T: { name:'F'},  P: { name: "A"} }, 
            { T: { name:'D'},  P: { name: "E"} }, 
            { T: { name:'B'},  P: { name: "C"} }, 
            { T: { name:'G#'}, P: { name: "A"} }, 
            { T: { name:'F'},  P: { name: "E"} }, 
            { T: { name:'D'},  P: { name: "C"} }, 
            { T: { name:'B'},  P: { name: "A"} }, 
            { T: { name:'G#'}, P: { name: "Bb"} },
            { T: { name:'G'},  P: { name: "E"} }
        ],
        rang1 : [ 
            { T: { name:'A'},  P: { name: "D"} }, 
            { T: { name:'F#'}, P: { name: "B"} }, 
            { T: { name:'E'},  P: { name: "G"} }, 
            { T: { name:'C'},  P: { name: "D"} }, 
            { T: { name:'A'},  P: { name: "B"} }, 
            { T: { name:'F#'}, P: { name: "G"} }, 
            { T: { name:'E'},  P: { name: "D"} }, 
            { T: { name:'C'},  P: { name: "B"} }, 
            { T: { name:'A'},  P: { name: "G"} }, 
            { T: { name:'F#'}, P: { name: "D"} },
            { T: { name:'E'},  P: { name: "C#"} }
        ]
	    },
	    gauche : {
          rang3 : [
            { T: { name: "Eb"}, P: { name: "Bb"} },
            { T: { name: "G#"}, P: { name: "B"} },
            { T: { name: "C"},  P: { name: "D"} },
            { T: { name: "F#"}, P: { name: "F#"} },
            { T: { name: "C#"}, P: { name: "C#"} },
            { T: { name: "E"},  P: { name: "A"} }
          ],
          rang2 : [ 
            { T: { name: "B"},  P: { name: "G#"} },
            { T: { name: "b"},  P: { name: "g#"} },
            { T: { name: "F"},  P: { name: "F"} },
            { T: { name: "f"},  P: { name: "f"} },
            { T: { name: "A"},  P: { name: "E"} },
            { T: { name: "a"},  P: { name: "e"} }
          ],
          rang1 : [ 
            { T: { name: "Bb"}, P: { name: "Eb"} },
            { T: { name: "bb"}, P: { name: "eb"} },
            { T: { name: "G"}, P: { name: "C"} },
            { T: { name: "g"}, P: { name: "c"} },
            { T: { name: "D"}, P: { name: "G"} },
            { T: { name: "d"}, P: { name: "g"} }
          ]
      }
    },
    Standard : {
        droite : {
            rang3 : [
              { T: { name: "C#"}, P: { name: "G#"} },
              { T: { name: "Bb"}, P: { name: "Eb"} },
              { T: { name: "G#"}, P: { name: "A"} },
              { T: { name: "G"},  P: { name: "G#"} },
              { T: { name: "C#"}, P: { name: "Eb"} },
              { T: { name: "Bb"}, P: { name: "A"} },
              { T: { name: "G#"}, P: { name: "G#"} },
              { T: { name: "G"},  P: { name: "Eb"} },
              { T: { name: "C#"}, P: { name: "A"} },
              { T: { name: "Bb"}, P: { name: "F"} }
            ],
            rang2 : [ 
              { T: { name: "D"}, P: { name: "A"} },
              { T: { name: "B"}, P: { name: "E"} },
              { T: { name: "A"}, P: { name: "C"} },
              { T: { name: "F"}, P: { name: "G"} },
              { T: { name: "D"}, P: { name: "E"} },
              { T: { name: "B"}, P: { name: "C"} },
              { T: { name: "G"}, P: { name: "A"} },
              { T: { name: "F"}, P: { name: "E"} },
              { T: { name: "D"}, P: { name: "C"} },
              { T: { name: "B"}, P: { name: "G"} },
              { T: { name: "G"}, P: { name: "E"} }
            ],
            rang1 : [ 
              { T: { name: "C"},  P: { name: "G"} },
              { T: { name: "A"},  P: { name: "D"} },
              { T: { name: "F#"}, P: { name: "B"} },
              { T: { name: "E"},  P: { name: "G"} },
              { T: { name: "C"},  P: { name: "D"} },
              { T: { name: "A"},  P: { name: "B"} },
              { T: { name: "F#"}, P: { name: "G"} },
              { T: { name: "E"},  P: { name: "D"} },
              { T: { name: "C"},  P: { name: "B"} },
              { T: { name: "A"},  P: { name: "G"} },
              { T: { name: "F#"}, P: { name: "D"} },
              { T: { name: "E"},  P: { name: "B"} }
            ]
        },
        gauche : {
            rang3 : [
              { T: { name: "C"},  P: { name: "D"} },
              { T: { name: "c"},  P: { name: "d"} },
              { T: { name: "F#"}, P: { name: "A"} },
              { T: { name: "f#"}, P: { name: "a"} },
              { T: { name: "C#"}, P: { name: "B"} },
              { T: { name: "c#"}, P: { name: "b"} }
            ],
            rang2 : [ 
              { T: { name: "F"},  P: { name: "F"} },
              { T: { name: "f"},  P: { name: "f"} },
              { T: { name: "A"},  P: { name: "E"} },
              { T: { name: "a"},  P: { name: "e"} },
              { T: { name: "Bb"}, P: { name: "Eb"} },
              { T: { name: "bb"}, P: { name: "eb"} }
            ],
            rang1 : [ 
              { T: { name: "G"}, P: { name: "C"} },
              { T: { name: "g"}, P: { name: "c"} },
              { T: { name: "D"}, P: { name: "G"} },
              { T: { name: "d"}, P: { name: "g"} },
              { T: { name: "B"}, P: { name: "G#"} },
              { T: { name: "b"}, P: { name: "g#"} }
            ]
        }
    }
  },
  chroma : {
    Darwin : {
      droite : {
          rang3 : [
            { T: { name: "C#"}, P: { name: "F"} },
            { T: { name: "Bb"}, P: { name: "Eb"} },
            { T: { name: "G#"}, P: { name: "G#"} },
            { T: { name: "Eb"}, P: { name: "F"} },
            { T: { name: "C#"}, P: { name: "Eb"} },
            { T: { name: "Bb"}, P: { name: "G#"} },
            { T: { name: "G#"}, P: { name: "F"} },
            { T: { name: "Eb"}, P: { name: "Eb"} },
            { T: { name: "C#"}, P: { name: "G#"} },
            { T: { name: "Bb"}, P: { name: "F"} },
            { T: { name: "G#"}, P: { name: "E&"} },
          ],
          rang2 : [ 
            { T: { name: "D"}, P: { name: "A"} },
            { T: { name: "B"}, P: { name: "E"} },
            { T: { name: "G"}, P: { name: "C"} },
            { T: { name: "F"}, P: { name: "A"} },
            { T: { name: "D"}, P: { name: "E"} },
            { T: { name: "B"}, P: { name: "C"} },
            { T: { name: "G"}, P: { name: "A"} },
            { T: { name: "F"}, P: { name: "E"} },
            { T: { name: "D"}, P: { name: "C"} },
            { T: { name: "B"}, P: { name: "A"} },
            { T: { name: "G"}, P: { name: "E"} },
            { T: { name: "F"}, P: { name: "C"} }
          ],
          rang1 : [ 
            { T: { name: "A"},  P: { name: "D"} },
            { T: { name: "F#"}, P: { name: "B"} },
            { T: { name: "E"},  P: { name: "G"} },
            { T: { name: "C"},  P: { name: "D"} },
            { T: { name: "A"},  P: { name: "B"} },
            { T: { name: "F#"}, P: { name: "G"} },
            { T: { name: "E"},  P: { name: "D"} },
            { T: { name: "C"},  P: { name: "B"} },
            { T: { name: "A"},  P: { name: "G"} },
            { T: { name: "F#"}, P: { name: "D"} },
            { T: { name: "E"},  P: { name: "B"} }
          ]
      },
      gauche : {
          rang4 : [
            { T: { name: "bb"}, P: { name: "bb"} },
            { T: { name: "c"},  P: { name: "c"} },
            { T: { name: "d"},  P: { name: "d"} },
            { T: { name: "e"},  P: { name: "e"} },
            { T: { name: "f#"}, P: { name: "f#"} },
            { T: { name: "g#"}, P: { name: "g#"} }
          ],
          rang3 : [
            { T: { name: "eb"}, P: { name: "eb"} },
            { T: { name: "f"},  P: { name: "f"} },
            { T: { name: "g"},  P: { name: "g"} },
            { T: { name: "a"},  P: { name: "a"} },
            { T: { name: "b"},  P: { name: "b"} },
            { T: { name: "c#"}, P: { name: "c#"} },
            { name: 'shift', value: darwinbshift }
          ],
          rang2 : [ 
            { T: { name: "Bb"}, P: { name: "Bb"} },
            { T: { name: "C"},  P: { name: "C"} },
            { T: { name: "D"},  P: { name: "D"} },
            { T: { name: "E"},  P: { name: "E"} },
            { T: { name: "F#"}, P: { name: "F#"} },
            { T: { name: "G#"}, P: { name: "G#"} },
            { name: 'shift', value: (darwinbshift*2) }
          ],
          rang1 : [ 
            { T: { name: "Eb"}, P: { name: "Eb"} },
            { T: { name: "F"},  P: { name: "F"} },
            { T: { name: "G"},  P: { name: "G"} },
            { T: { name: "A"},  P: { name: "A"} },
            { T: { name: "B"},  P: { name: "B"} },
            { T: { name: "C#"}, P: { name: "C#"} },
            { name: 'shift', value: (darwinbshift*3) }
          ]
      }
    }
  }
}

const sectionLabels = {
  r3b18: "3 rangs 18 basses",
  chroma: "Chromatique"
}


//-----------------------------------
function makeKbdold (div, kbd) {
  let before = "";
  let list = Object.keys(kbd);
  list.forEach (item => {
    let label = document.createElement('label');
    label.classList.add("label");
    label.innerHTML = before + item.replaceAll('_', ' ') + "<br/>";
    before = "<br/>";
    div.appendChild (label);

    let radio = document.createElement('input');
    radio.setAttribute('type', 'radio');
    radio.setAttribute('name', "keybd");
    radio.setAttribute('id', item);
    if ( kbd[item].default )
      radio.setAttribute('checked', 'checked');
    radio.addEventListener ('click', setKeyboard, {capture: true});
    div.appendChild (radio);
  });
}

//-----------------------------------
function tableItem(label, defaut, section) {
  let tr = document.createElement('tr');
  let tlab = document.createElement('td');
  tlab.innerHTML = label.replaceAll('_', ' ');

  let trad = document.createElement('td');
  let radio = document.createElement('input');
  radio.setAttribute('type', 'radio');
  radio.setAttribute('name', "keybd");
  radio.setAttribute('id', label);
  radio.setAttribute('section', section);
  if ( defaut )
    radio.setAttribute('checked', 'checked');
  radio.addEventListener ('click', setKeyboard, {capture: true});
  trad.appendChild (radio)
  tr.appendChild (tlab);
  tr.appendChild (trad);
  return tr;
}

//-----------------------------------
function makeKbd (div, section, kbd) {
  let list = Object.keys(kbd);
  let table = document.createElement('table');
  table.classList.add("menut");
  list.forEach (item => {
    table.appendChild (tableItem (item, kbd[item].default, section))
  });
  div.appendChild (table);
}

//-----------------------------------
function makeKbdMenu (div) {
  let title = document.createElement('h2');
  title.innerHTML = "Claviers";
  div.appendChild (title);

  let before = "";
  let list = Object.keys(claviers);
  list.forEach (item => {
    let container = document.createElement('div');
    container.classList.add("ksection");
    let section = document.createElement('h3');
    container.name = item;
    section.innerHTML = sectionLabels[item];
    container.appendChild (section);
    makeKbd (container, item, claviers[item]);
    div.appendChild (container);
  });
}

//-----------------------------------
function getKeyboardName (map) {
  let out = "";
  let list = Object.keys(claviers);
  list.forEach (section => {
    let kbd = Object.keys(claviers[section])
    kbd.forEach (item => {
      if (claviers[section][item] === map) 
        out = item;
    })
  });
  return out;
}

//-----------------------------------
function getKeyboardInfo (map) {
  let out = "";
  let list = Object.keys(claviers);
  list.forEach (section => {
    let kbd = Object.keys(claviers[section])
    kbd.forEach (item => {
      if (claviers[section][item] === map) 
        out = sectionLabels[section] + " : " + item.replaceAll('_', ' ');
    })
  });
  return out;
}