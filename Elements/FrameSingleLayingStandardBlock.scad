// Fischertechnik Box Library
// Frame for one laying standard block
// 31004, 32880

use <../ModelBase/Simple.scad>

width = 32.5;
depth = 15;
height = 8;

// getFrameSingleLayingBlockSpace()
// Gets the space of a frame for a single laying 30 mm bulding block

function getFrameSingleLayingStandardBlockSpace(columns=1, rows=1) = getFrameOuterVolume([width, depth, height]);

// FrameSingleLayingBlock()
// Frame for a single laying 30 mm bulding block

module FrameSingleLayingStandardBlock() {
    Frame([width, depth, height]);
}

// Tests
color("lightgray")
FrameSingleLayingStandardBlock();