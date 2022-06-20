// Fischertechnik Box Library
// Frame for Building Blocks with Connector
// 38240, 37636

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>

/* [Element Parameters] */
count = 1;
height = 8;

/* [Hidden] */
width = 15;
depth = 15;

// getFrameBlockWithPinSpace()
// Gets the space the frame block with pin needs as width (.x and .y as a list)
// for the specified count of blocks

function getFrameBlockWithPinSpace(count = 1) = getFrameOuterVolume([width * count, depth, height]);

// FrameBlockWithPin(count, height=8)
// Frame for count standing building blocks with pin down
// count = Count of blocks
// height = Height of the frame (default is 8)

module FrameBlockWithPin(count = 1, height=height) {
    volume = [width*count, depth, height];
    Frame(volume);
 
    railHeight = 2.7;
    railDistance = 9;
    FrameRails(volume, railDistance, railHeight);
}

// Test
color("lightgray")
FrameBlockWithPin(count);
