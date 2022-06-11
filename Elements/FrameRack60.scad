// Fischertechnik Box Library
// Frame for Rack 60
// 31053

use <../ModelBase/Complex.scad>

include <../Base/PlacementOptions.scad>

/* [Element Parameters] */
count = 1;
alignX = 0;   // [0:NoAlign, 1:AlignLeft, 4:AlignRight]
alignY = 0;   // [0:NoAlign, 2:AlignBottom, 5:AlignTop]

/* [Hidden] */
width = 30;
depth = 15;
height = 12.8;
factor = 2;

// getFrameRack60Space(count=1)
// Gets the space for a frame for count racks 60 in one row.

function getFrameRack60Space(count=1) = getFrameRackSpace(factor, count);

// FrameRack60(count)
// Frame for rack 60. The racks 30 are ordered in line.
// A frame for two racks 30 is identical to a single frame for a rack 60.
// count = Count of racks
// alignX = AlignLeft, AlignRight, NoAlign for docking
// alignY = AlignBottom, AlignTop, NoAlign for docking

module FrameRack60(count=1, alignX = NoAlign, alignY = NoAlign) {
    FrameRack(factor, count, alignX, alignY);
}

// Test
color("lightgray")
FrameRack60(count);