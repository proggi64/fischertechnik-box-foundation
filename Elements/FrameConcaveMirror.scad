// Fischertechnik Box Library
// Frame for Concave Mirror
// 31369 

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>
use <../ModelBase/Complex.scad>

/* [Hidden] */
width = 35.3;
depth = 30;
height = 4;

// getFrameConcaveMirrorSpace()
// Gets the outer space the concave mirror frame needs.

function getFrameConcaveMirrorSpace() = getFrameOuterVolume([width, depth, height]);

// FrameConcaveMirror()
// Frame for 30 mm concave mirror.

module FrameConcaveMirror() {
    FrameSpecialFlat([width, depth, height]);
}

// Tests
color("lightgray") {
FrameConcaveMirror();
}
