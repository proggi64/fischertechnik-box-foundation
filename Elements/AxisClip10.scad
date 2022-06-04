// Fischertechnik Box Library
// Axis for clip 10
// 31023

use <../ModelBase/Simple.scad>
use <../Base/Constants.scad>

/* [Element Parameters] */
height = 23;
clipHeight = 10;

/* [Hidden] */
width = 12;
depth = 12;
upperDiameter = 3.6;

// getAxisClip10Space()
// Gets the space of a frame for a clip 10 with spring ring (mot2)

function getAxisClip10Space() = [width, depth, height];

// AxisClip10(height, clipHeight)
// Axis for clip 10 with spring ring (mot2)
// height = Height of the complete axis (standard is 23, in mot3 its only 12)
// clipHeight = Height of the part for the clip (standard is 10, in mot3 its only 7)

module AxisClip10(height=height, clipHeight=clipHeight) {
    LeveledAxisWithSpace(height, height-clipHeight, getAxisClip10Space(), diameter=upperDiameter);
}

// Test
color("lightgray")
AxisClip10(height, clipHeight);