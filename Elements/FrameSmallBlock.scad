// Fischertechnik Box Library
// Frame for small blocks 5 or 7.5 mm
// 37237 and 37238

use <../ModelBase/Simple.scad>

width = 7.5;
depth = 15;
height = 10;

// getFrameSmallBlockSpace(columns=1, rows=1)
// Gets the space of a frame for columns x rows small parts (7.5 or 5)

function getFrameSmallBlockSpace(columns=1, rows=1) = getFrameOuterVolume([width * columns, depth * rows, height]);

// FrameSmallBlock(columns=1, rows=1)
// frame for columns x rows small parts (7.5 or 5)

module FrameSmallBlock(columns=1, rows=1) {
    Frame([width * columns, depth * rows, height]);
}

// Tests
color("lightgray")
FrameSmallBlock();