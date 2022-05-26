// Fischertechnik Box Library
// Axis for clip 10
// 31023

use <../ModelBase/Simple.scad>
use <../Base/Constants.scad>

width = 12;
depth = 12;
height = 23;
upperDiameter = 3.6;
clipHeight = 10;

// getAxisClip10Space()
// Gets the space of a frame for a clip 10 with spring ring (mot2)

function getAxisClip10Space() = [width, depth, height];

// AxisClip10(height, clipHeight)
// Axis for clip 10 with spring ring (mot2)
// height = Height of the complete axis
// clipHeight = Height of the rt for the clip (standard is 10, in mot3 its only 7)

module AxisClip10(height=height, clipHeight=clipHeight) {
    LeveledAxisWithSpace(height, height-clipHeight, getAxisClip10Space(), diameter=upperDiameter);
}

// Tests
color("lightgray")
AxisClip10();