// Fischertechnik Box Library
// Frame for Wheel Pulley
// 35795

use <../ModelBase/Simple.scad>

/* [Element Parameters] */
columns = 1;
rows = 1;

/* [Hidden] */
width = 22.5;
depth = 7.5;
height = 13;

// getFramePulleySpace(columns=1, rows=1)
// Gets the space the frame pulley needs as width and depth (.x and .y as a list)
// columns = Count of pulleys in X direction, small side
// rows = Count of pulleys in Y direction

function getFramePulleySpace(columns=1, rows=1) = getFrameOuterVolume([width*columns, depth*rows, height]);

// FramePulley(columns=1, rows=1)
// columns = Count of pulleys in X direction
// rows = Count of pulleys in Y direction
// The walls of the frame are 13 mm high. The small side of the pulley
// is 7.5 mm wide, the large side is 22.5 mm wide.
// The complete frame has a tolerance of addition 1 mm in each direction.

module FramePulley(columns=1, rows=1) {
    Frame([width*columns, depth*rows, height]);
}

// Tests
color("lightgray") {
    FramePulley(columns, rows);
}
