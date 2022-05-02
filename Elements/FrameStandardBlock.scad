// Fischertechnik Box Library
// Frame for standard blocks
// 31003, 31004, 31005 etc.

use <../ModelBase/Simple.scad>

width = 15;
depth = 15;
height = 10;

// getFrameSmallBlockSpace(columns=1, rows=1)
// Gets the space of a frame for columns x rows small parts (7.5 or 5)

function getFrameStandardBlockSpace(columns=1, rows=1) = getFrameOuterVolume([width * columns, depth * rows, height]);

// FrameSmallBlock(columns=1, rows=1)
// frame for columns x rows small parts (7.5 or 5)

module FrameStandardBlock(columns=1, rows=1) {
    Frame([width * columns, depth * rows, height]);
}

// Tests
color("lightgray")
FrameStandardBlock();