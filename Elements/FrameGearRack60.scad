// Fischertechnik Box Library
// Frame for gear rack 60 for mini-motor lifting gear
// 37451

use <../ModelBase/Complex.scad>

/* [Hidden] */
width = 60;

// getFrameGearRack60Space()
// Gets the space of a frame for the gear rack 30 for mini-motor lifting gear
// dock = true, if the frame should be docked to the wall at the left side

function getFrameGearRack60Space(dock=false) = getGearRackSpace(width, dock);

// FrameGearRack60()
// Frame for the gear rack 60 for mini-motor lifting gear
// dock = true, if the frame should be docked to the wall at the left side

module FrameGearRack60(dock=false) {
    GearRack(width, dock);
}

// test
color("lightgray")
FrameGearRack60();
