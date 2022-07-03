// Fischertechnik Box Library
// Frame for Right Side Piece
// 163199

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>

/* [Hidden] */
width = 30;
depth = 45;
height = 8;
leftHeight = 5;
volume = [width, depth, height];

// getFrameSidePieceRightSpace()
// gets the space a right side piece needs

function getFrameSidePieceRightSpace() = getFrameOuterVolume(volume);

// FrameSidePieceRight()
// Frame for right side piece

module FrameSidePieceRight() {
    difference() {
        Frame(volume);
        FrameTopCutoff(volume, 20 + getTolerance(), -2.5);
        FrameBottomCutoff(volume, 30 + getTolerance(), -7.5);
        FrameLeftCutoff(volume, 30 + getTolerance(), -7.5);
        translate([-getExcess(), 30, leftHeight])
            cube([10, 20, 10]);
    }
}

// Test
color("lightgray")
FrameSidePieceRight();