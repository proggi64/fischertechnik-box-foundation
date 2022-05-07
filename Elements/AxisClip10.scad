// Fischertechnik Box Library
// Axis for clip 10
// 31023

use <../ModelBase/Simple.scad>

width = 12;
depth = 12;
height = 23;

// getAxisClip10Space()
// Gets the space of a frame for a clip 10 with spring ring (mot2)

function getAxisClip10Space() = [width, depth, height];

// AxisClip10()
// Axis for clip 10 with spring ring (mot2)

module AxisClip10() {
    LeveledAxisWithSpace(height, height-10, getAxisClip10Space());
}

// Tests
color("lightgray")
AxisClip10();