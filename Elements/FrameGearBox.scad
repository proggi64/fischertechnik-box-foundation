// Fischertechnik Box Library
// Frame for gear box
// 31048

use <../ModelBase/Simple.scad>

width = 45;
depth = 45;
height = 12;

// getFrameGearBoxSpace()
// Gets the space of a frame for a gearbox (mot2)

function getFrameGearBoxSpace() = getFrameOuterVolume([width, depth, height]);

// FrameGearBox()
// frame for a gearbox (mot2)

module FrameGearBox() {
    Frame([width, depth, height]);
}

// Tests
color("lightgray")
FrameGearBox();