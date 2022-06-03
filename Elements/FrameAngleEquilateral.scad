// Fischertechnik Box Library
// Frame for equilateral angle blocks
// 31010

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>

/* [Element Parameters] */
count = 1;

/* [Hidden] */
width = 15;
depth = 15;
height = 9;

// getFrameAngleEquilateralSpace
// Gets the space the frame angle equilateral needs for count blocks as width and depth (.x and .y as a list)
// count = Count of equilateral angle blocks

function getFrameAngleEquilateralSpace(count=1) = getFrameOuterVolume([width * count, depth, height]);

// FrameAngleEquilateral(count)
// count = Count of angle blocks in x direction
// The walls of the frame are 9 mm high.
// The complete frame has a tolerance of addition 1 mm in each direction.

module FrameAngleEquilateral(count=1) {
    innerVolume = getFrameInnerVolume([width * count, depth, height]);
    Frame(innerVolume);
}

// Tests
color ("lightgray")
FrameAngleEquilateral(count);