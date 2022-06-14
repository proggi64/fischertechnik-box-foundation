// Fischertechnik Box Library
// Frame for lifting gear
// 37263, 37268, 37272, 75067

use <../ModelBase/Simple.scad>

/* [Hidden] */
width = 30;
depth = 23;
height = 6;

volume = [width, depth, height];

// getFrameLiftingGearSpace()
// Gets the space the frame for the lifting gear needs

function getFrameLiftingGearSpace() = getFrameOuterVolume(volume);

// FrameLiftingGear()
// Creates a frame for a lifting gear

module FrameLiftingGear() {
    Frame(volume);
}

// Test
color("lightgray")
FrameLiftingGear();