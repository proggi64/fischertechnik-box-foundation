// Fischertechnik Box Library
// Frame for Building Blocks with stud
// 38240, 37636

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>

/* [Element Parameters] */
count = 1;
height = 8;

/* [Hidden] */
width = 15;
depth = 15;

// getFrameBlockWithStudSpace()
// Gets the space the frame block with stud needs as width (.x and .y as a list)
// for the specified count of blocks

function getFrameBlockWithStudSpace(count = 1) = getFrameOuterVolume([width * count, depth, height]);

// FrameBlockWithStud(count, height=8)
// Frame for count standing building blocks with stud down
// count = Count of blocks
// height = Height of the frame (default is 8)

module FrameBlockWithStud(count = 1, height=height) {
    volume = [width*count, depth, height];
    Frame(volume);
 
    FrameRails(volume);
}

// Test
color("lightgray")
FrameBlockWithStud(count);
