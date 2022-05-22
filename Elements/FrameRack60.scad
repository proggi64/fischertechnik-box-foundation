// Fischertechnik Box Library
// Frame for Rack 60
// 31053

use <../ModelBase/Complex.scad>

width = 30;
depth = 15;
height = 12.8;
factor = 2;

// getFrameRack60Space(count=1)
// Gets the space for a frame for count racks 60 in one row.

function getFrameRack60Space(count=1) = getFrameRackSpace(factor, count);

// FrameRack(count)
// Frame for rack 60. The racks 30 are ordered in line.
// A frame for two racks 30 is identical to a single frame for a rack 60.
// count = Count of racks

module FrameRack60(count=1) {
    FrameRack(factor, count);
}

// Test
color("lightgray")
FrameRack60();