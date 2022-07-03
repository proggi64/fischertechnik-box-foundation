// Fischertechnik Box Library
// Frame for Left Side Piece
// 163198

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>

/* [Hidden] */
width = 30;
depth = 45;
height = 8;
rightHeight = 5;
volume = [width, depth, height];

// getFrameSidePieceLeftSpace()
// gets the space a left side piece needs

function getFrameSidePieceLeftSpace() = getFrameOuterVolume(volume);

// FrameSidePieceLeft()
// Frame for left side piece

module FrameSidePieceLeft() {
    difference() {
        Frame(volume);
        FrameTopCutoff(volume, 20 + getTolerance(), 2.5);
        FrameBottomCutoff(volume, 30 + getTolerance(), 7.5);
        FrameRightCutoff(volume, 30 + getTolerance(), -7.5);
        translate([25+getExcess(), 30, rightHeight])
            cube([10, 20, 10]);
    }
}

// Test
color("lightgray")
FrameSidePieceLeft();
