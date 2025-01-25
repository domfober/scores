// Note
// P et T doivent être inversé à main gauche

const claviers = {
    heim : {
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
  	          { P: { name: "C"},  T: { name: "D"} },
              { P: { name: "Ab"}, T: { name: "A"} },
              { P: { name: "E"},  T: { name: "B"} },
              { P: { name: "F#"}, T: { name: "F#"} },
              { P: { name: "C#"}, T: { name: "C#"} },
              { P: { name: "Eb"}, T: { name: "Bb"} }
            ],
            rang2 : [ 
              { P: { name: "F"},  T: { name: "F"} },
              { P: { name: "f"},  T: { name: "f"} },
              { P: { name: "A"},  T: { name: "E"} },
              { P: { name: "a"},  T: { name: "e"} },
              { P: { name: "Bb"}, T: { name: "Eb"} },
              { P: { name: "bb"}, T: { name: "eb"} }
            ],
            rang1 : [ 
              { P: { name: "G"}, T: { name: "C"} },
              { P: { name: "g"}, T: { name: "c"} },
              { P: { name: "D"}, T: { name: "G"} },
              { P: { name: "d"}, T: { name: "g"} },
              { P: { name: "B"}, T: { name: "G#"} },
              { P: { name: "b"}, T: { name: "g#"} }
            ]
        }
    }
}
