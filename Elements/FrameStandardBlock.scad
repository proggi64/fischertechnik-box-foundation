// Fischertechnik Box Library
// Frame for standard blocks
// 31003, 31004, 31005 etc.

use <../ModelBase/Simple.scad>

width = 15;
depth = 15;
height = 10;

// getFrameSmallBlockSpace(columns=1, rows=1)
// Gets the space of a frame for columns x rows

function getFrameStandardBlockSpace(columns=1, rows=1) = getFrameOuterVolume([width * columns, depth * rows, height]);

// FrameSmallBlock(columns=1, rows=1, height=10)
// frame for columns x rows 15x15
// columns = Count of 15 mm blocks in X direction
// rows = Count of 15 mm blocks in Y direction
// height = Height of frame walls (default  is 10)

module FrameStandardBlock(columns=1, rows=1, height=height) {
    Frame([width * columns, depth * rows, height]);
}

// Tests
color("lightgray")
FrameStandardBlock();