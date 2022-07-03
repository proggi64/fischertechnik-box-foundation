// Fischertechnik Box Library
// Frame for 7.5 degrees angle blocks
// 32071

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>

/* [Element Parameters] */
count = 1;

/* [Hidden] */
width = 7;
depth = 15;
height = 9;

// getFrameAngle7p5Space
// Gets the space the frame for 7.5 degrees angle blocks needs for count blocks
// count = Count of angle blocks

function getFrameAngle7p5Space(count=1) = getFrameOuterVolume([width * count, depth, height]);

// FrameAngle7p5(count)
// count = Count of angle blocks in x direction
// The walls of the frame are 9 mm high.

module FrameAngle7p5(count=1) {
    Frame([width * count, depth, height]);
}

// Tests
color ("lightgray")
FrameAngle7p5(count);