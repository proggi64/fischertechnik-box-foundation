// Fischertechnik Box Library
// Frame for Hinged Block
// 31008

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>

width = 50;
depth = 15;
height = 5;

// getFrameHingedBlockSpace()
// Gets the space for the hinged block frame.

function getFrameHingedBlockSpace() = getFrameOuterVolume([width, depth, height]);

// FrameHingedBlock()
// Frame for hinged block (strait)
// 31008

module FrameHingedBlock() {
    Frame([width, depth, height]);
}

// Test
color("lightgray")
FrameHingedBlock();