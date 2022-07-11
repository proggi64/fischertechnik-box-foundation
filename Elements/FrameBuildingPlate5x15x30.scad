// Fischertechnik Box Library
// Frame for building plate 5x15x30
// 32330
// 38428

use <../ModelBase/Simple.scad>

/* [Element Parameters] */
count = 1;

/* [Hidden] */
width = 30;
depth = 5;
height = 8;

// getFrameBuildingPlate5x15x30Space(count=1)
// Gets the space of a frame for count building plates

function getFrameBuildingPlate5x15x30Space(count=1) = getFrameOuterVolume([width, depth * count, height]);

// FrameBuildingPlate5x15x30(count=1)
// Frame for count building plates 5x15x30

module FrameBuildingPlate5x15x30(count=1) {
    Frame([width, depth * count, height]);
}

// Tests
color("lightgray")
FrameBuildingPlate5x15x30(count);