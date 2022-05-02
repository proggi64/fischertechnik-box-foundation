// Fischertechnik Box Library
// Coupling Bracket
// 38252

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>
use <../ModelBase/Complex.scad>

width = 9.15 - getTolerance();
depth = 30;
height = 10;

// getFrameCouplingBracketSpace()
// Gets the space the frame coupling bracket needs as width and depth (.x and .y as a list)

function getFrameCouplingBracketSpace() = getFrameOuterVolume([width, depth, height]);

// FrameCouplingBracket()
// Coupling Bracket
// 38252

module FrameCouplingBracket() {
    cutOffWidth = 2 * getDividerThickness();
    cutOffDepth = 22;
    cutOffHeight = height + 2*getExcess();
    
    innerVolume = getFrameInnerVolume([width, depth, height]);
    cutOffXOffset = innerVolume.x + 2*getExcess();
    cutoffYOffset = (innerVolume.y - cutOffDepth) / 2 + getDividerThickness();
    
    difference() {
        Frame(innerVolume, tolerance=0);
        translate([cutOffXOffset, cutoffYOffset, 0])
            cube([cutOffWidth, cutOffDepth, cutOffHeight]);
    }
    
    railWidth = innerVolume.x + 2*getExcess();
    railDepth = getDividerThickness();
    railHeight = 3 + getExcess();
    
    railXOffset = getDividerThickness() - getExcess();
    railYOffset1 = cutoffYOffset - getDividerThickness();
    railYOffset2 = cutoffYOffset + cutOffDepth;
    
    translate([railXOffset, 0, -getExcess()]) {
        translate([0, railYOffset1])
            cube([railWidth, railDepth, railHeight]);
        translate([0, railYOffset2])
            cube([railWidth, railDepth, railHeight]);
    }
}

// Test
color("lightgray")
FrameCouplingBracket();