// Fischertechnik Box Library
// Frame for Locking Ring
// 31020

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>

width = 20;
depth = 7.5;
height = 13;

// getFrameLockingRingSpace(columns=1, rows=1)
// columns = Count of locking rings in X direction (width of ring)
// rows = Count of locking rings in Y direction (depth of ring)
// Gets the space the frame locking ring needs as width (.x and .y as a list)

function getFrameLockingRingSpace(columns=1, rows=1) = getFrameOuterVolume([width*columns, depth*rows, height]);

// FrameLockingRing(columns, rows, smallSideIsX)
// columns = Count of locking rings in X direction (width of ring)
// rows = Count of locking rings in Y direction (depth of ring)
// The walls of the frame are 13 mm high. The small side is 7.5 mm wide, the large side
// is 20 mm wide.

module FrameLockingRing(columns=1, rows=1) {
    Frame([width*columns, depth*rows, height]);
}

// Tests
color("lightgray")
    FrameLockingRing(1);
