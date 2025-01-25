
function getPitchClass(pitch) {
    switch(pitch) {
        case 'C': return 0;
        case 'Db': 
        case 'C#': return 1;
        case 'D': return 2;
        case 'D#': 
        case 'Eb': return 3;
        case 'E': return 4; 
        case 'F': return 5;
        case 'F#': 
        case 'Gb': return 6;
        case 'G': return 7;
        case 'G#': 
        case 'Ab': return 8;
        case 'A': return 9;
        case 'A#': 
        case 'Bb': return 10;
        case 'B': return 11;
    }
    return -1;
}

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

function getPentaScale(pitch) {
    let out = [];
    out.push(pitch);
    out.push((pitch + 2) % 12);
    out.push((pitch + 4) % 12);
    out.push((pitch + 7) % 12);
    out.push((pitch + 9) % 12);
    return out;
}

