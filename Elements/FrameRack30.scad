// Fischertechnik Box Library
// Frame for Rack 30
// 31054

use <../Base/Constants.scad>
use <../ModelBase/Complex.scad>

/* [Element Parameters] */
count = 1;

/* [Hidden] */
width = 30;
depth = 15;
height = 12.8;
factor = 1; // 30 mm

// getFrameRack30Space(count=1)
// Gets the space for a frame for count racks 30 in one row.

function getFrameRack30Space(count=1) = getFrameRackSpace(factor*count, 1);

// FrameRack(count)
// Frame for rack 30. The racks 30 are ordered in line.
// count = Count of racks in one row

module FrameRack30(count=1) {
    FrameRack(factor*count, 1);
}

// Test
color("lightgray")
FrameRack30(count);