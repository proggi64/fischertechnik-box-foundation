// Fischertechnik Box Library
// Frame for bracket with axle 80
// 38201

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>
use <../ModelBase/Complex.scad>

/* [Hidden] */
length = 66;
axisLength = 80;

completeSpace = [
    axisLength + getTolerance(), 
    getFrameAxisSpace(length).y,
    getFrameAxisHeight()];

// getFrameBracketWithAxle80Space()
// Gets the width (.x) and depth (.y) of the axis frame.

function getFrameBracketWithAxle80Space() = completeSpace;

// FrameBracketWithAxle80()
// Axis holder for a single 60 mm axis.

module FrameBracketWithAxle80() {
    Space(completeSpace);
    translate([5, 0])
        FrameAxis(length, cutThrough=true);
}

// Test
color("lightgray")
FrameBracketWithAxle80();