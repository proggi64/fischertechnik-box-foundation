// Fischertechnik Box Library
// Frame for block 15x30x5 with pin
// 35049

use <../ModelBase/Simple.scad>

/* [Element Parameters] */
columns = 1;
rows = 1;

/* [Hidden] */
width = 7.5;
depth = 15;
height = 15;

// getFrameBlock15x30x5Space(columns=1, rows=1)
// Gets the space of a frame for columns x rows 15x30x5 blocks

function getFrameBlock15x30x5Space(columns=1, rows=1) = getFrameOuterVolume([width * columns, depth * rows, height]);

// FrameBlock15x30x5(columns=1, rows=1)
// frame for columns x rows small parts (7.5 or 5)

module FrameBlock15x30x5(columns=1, rows=1) {
    Frame([width * columns, depth * rows, height]);
}

// Tests
color("lightgray")
FrameBlock15x30x5(columns, rows);