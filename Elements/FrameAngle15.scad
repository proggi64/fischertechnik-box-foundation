// Fischertechnik Box Library
// Frame for 15 degrees angle blocks
// 32071

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>

/* [Element Parameters] */
count = 1;

/* [Hidden] */
width = 8;
depth = 15;
height = 9;

// getFrameAngle15Space
// Gets the space the frame for 15 degrees angle blocks needs for count blocks
// count = Count of angle blocks

function getFrameAngle15Space(count=1) = getFrameOuterVolume([width * count, depth, height]);

// FrameAngle15(count)
// count = Count of angle blocks in x direction
// The walls of the frame are 9 mm high.

module FrameAngle15(count=1) {
    Frame([width * count, depth, height]);
}

// Tests
color ("lightgray")
FrameAngle15(count);