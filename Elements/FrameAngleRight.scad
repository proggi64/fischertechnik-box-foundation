// Fischertechnik Box Library
// Frame for right angle blocks
// 31012

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>

/* [Element Parameters] */
count = 1;

/* [Hidden] */
width = 45 / 4;
depth = 15;
height = 9;

// getFrameAngleRightSpace
// Gets the space the right angle block needs for count blocks as width and depth (.x and .y as a list)
// count = Count of right angle blocks

function getFrameAngleIsoscelesSpace(count=1) = getFrameOuterVolume([width * count, depth, height]);

// FrameAngleRight(count)
// count = Count of right angle blocks in x direction
// The walls of the frame are 9 mm high.
// The complete frame has a tolerance of addition 1 mm in each direction.

module FrameAngleRight(count=1) {
    innerVolume = getFrameInnerVolume([width * count, depth, height]);
    Frame(innerVolume);
}

// Tests
color ("lightgray")
FrameAngleRight(count);