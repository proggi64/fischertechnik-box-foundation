// Fischertechnik Box Library
// Frame for gear rack 30 for mini-motor lifting gear
// 37457

use <../ModelBase/Complex.scad>

// getFrameGearRack30Space()
// Gets the space of a frame for the gear rack 30 for mini-motor lifting gear
// dock = true, if the frame should be docked to the wall at the left side

function getFrameGearRack30Space(dock=false) = getGearRackSpace(dock=dock);

// FrameGearRack30()
// Frame for the gear rack 30 for mini-motor lifting gear
// dock = true, if the frame should be docked to the wall at the left side

module FrameGearRack30(dock=false) {
    GearRack(dock=dock);
}

// test
color("lightgray")
FrameGearRack30();
