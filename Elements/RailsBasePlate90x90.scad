// Fischertechnik Box Library
// Base Plate 90 x 90
// 31002

use <../ModelBase/Complex.scad>

/* [Hidden] */
width = 90;
depth = 90;

// getRailsBasePlate90x90Space()
// Gets the width and depth of the space the rails base for the base plate 90x90 needs.
function getRailsBasePlate90x90Space() = getRailsBasePlateVolume(width, depth);

// RailsBasePlate90x90()
// Rails for a base plate of 180 x 90 mm
// 31002

module RailsBasePlate90x90() {
    RailsBasePlate(width, depth);
}

// Test
color("lightgray")
RailsBasePlate90x90();