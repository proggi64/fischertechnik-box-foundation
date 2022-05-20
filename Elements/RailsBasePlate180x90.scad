// Fischertechnik Box Library
// Base Plate 180 x 90
// 31001

use <../ModelBase/Complex.scad>

width = 180;
depth = 90;

// getRailsBasePlate180x90Space()
// Gets the width and depth of the space the rails base for the base plate 180x90 needs.
function getRailsBasePlate180x90Space() = getRailsBasePlateVolume(width, depth);

// RailsBasePlate180x90()
// Rails for a base plate of 180 x 90 mm
// 31001

module RailsBasePlate180x90() {
    RailsBasePlate(width, depth);
}

// Test
color("lightgray")
RailsBasePlate180x90();