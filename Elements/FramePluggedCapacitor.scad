// Fischertechnik Box Library
// Frame for Plugged Capacitor (two plugs)
// 36387

use <../ModelBase/Simple.scad>

/* [Hidden] */
width = 15;
depth = 6;
height = 13;

// getFramePluggedCapacitorSpace()
// Gets the space the frame for a plugged capacitor needs as width and depth (.x and .y as a list)

function getFramePluggedCapacitorSpace() = getFrameOuterVolume([width, depth, height]);

// FramePluggedCapacitor()
// The walls of the frame are 13 mm high. 
// The complete frame has a tolerance of addition 1 mm in each direction.

module FramePluggedCapacitor() {
    Frame([width, depth, height]);
}

// Tests
color("lightgray") {
FramePluggedCapacitor();
}
