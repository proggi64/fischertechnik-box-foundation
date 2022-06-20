// Fischertechnik Box Library
// Frame for Plugged Resistor (two plugs)
// 36381

use <../ModelBase/Simple.scad>

/* [Hidden] */
width = 16;
depth = 6;
height = 13;

// getFramePluggedResistorSpace()
// Gets the space the frame for a plugged capacitor needs as width and depth (.x and .y as a list)

function getFramePluggedResistorSpace() = getFrameOuterVolume([width, depth, height]);

// FramePluggedResistor()
// The walls of the frame are 13 mm high. 
// The complete frame has a tolerance of addition 1 mm in each direction.

module FramePluggedResistor() {
    Frame([width, depth, height]);
}

// Tests
color("lightgray") {
FramePluggedResistor();
}
