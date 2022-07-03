// Fischertechnik Box Library
// Frame for Side Piece 15
// 163200

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>

/* [Element Parameters] */
count = 1;

/* [Hidden] */
width = 30;
depth = 15;
height = 8;
rightHeight = 5;

// getFrameSidePiece15Space(count=1)
// gets the space count side pieces 15 needs
// count = Count of pieces (wider side by side)

function getFrameSidePiece15Space(count=1) = getFrameOuterVolume([width, depth * count, height]);

// FrameSidePiece15(count=15)
// Frame for count side pieces
// count = Count of pieces (wider side by side)

module FrameSidePiece15(count=1) {
    volume = [width, depth * count, height];
    difference() {
        Frame(volume);
        FrameTopCutoff(volume, 20 + getTolerance(), 2.5);
        FrameBottomCutoff(volume, 20 + getTolerance(), 2.5);
        translate([25+getExcess(), -getExcess(), rightHeight])
            cube([10, getFrameSidePiece15Space(count).y + 2*getExcess(), 10]);
    }
}

// Test
color("lightgray")
FrameSidePiece15(count);
