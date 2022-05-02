// Fischertechnik Box Library
// Frame for joint block
// 31008, 31009, 31308, 35831, 36223, 172804, 172805

use <../ModelBase/Simple.scad>

width = 32.5;
depth = 15;
height = 10;
tolerance = 0.2;

// getFrameJointBlockSpace()
// Gets the complete space of the joint block frame

function getFrameJointBlockSpace() = getAngledFrameOuterVolume(width, depth, width, depth, height, tolerance = tolerance);

// FrameJointBlock()
// Frame for a joint block

module FrameJointBlock() {
    AngledFrame(width, depth, width, depth, height, tolerance=tolerance);
}

// Test
color("lightgray")
FrameJointBlock();