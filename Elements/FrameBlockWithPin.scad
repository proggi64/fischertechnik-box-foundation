// Fischertechnik Box Library
// Frame for Building Blocks with Connector
// 38240, 37636

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>

width = 15;
depth = 15;
height = 8;

// getFrameBlockWithPinSpace()
// Gets the space the frame block with pin needs as width (.x and .y as a list)
// for the specified count of blocks

function getFrameBlockWithPinSpace(count = 1) = getFrameOuterVolume([width * count, depth, height]);

// FrameBlockWithPin(count, height=8)
// Frame for count standing building blocks with pin down
// count = Count of blocks
// height = Height of the frame (default is 8)

module FrameBlockWithPin(count = 1, height=height) {
    railWidth = getFrameBlockWithPinSpace(count).x;
    railHeight = 2.7;
    railDistance = 9;
    
    module Rails() {
        Wall([railWidth, getDividerThickness(), railHeight]);
        translate([0, railDistance + getDividerThickness()])
            Wall([railWidth, getDividerThickness(), railHeight]);
    }

    Frame([width*count, depth, height]);

    railsDepth = railDistance + 2*getDividerThickness();

    translate([0, (getFrameBlockWithPinSpace(count).y - railsDepth) / 2]) 
        Rails();
}

// Test
count = 2;
color("lightgray") {
FrameBlockWithPin(count);
}