// Fischertechnik Box Library
// Holder for Link Beam
// 38418

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>

width = 90;
depth = 15;

// getHolderLinkBeamSpace()
// Gets the width and depth of the space the lonk beam holder needs.
function getHolderLinkBeamSpace() = [width, depth];

// HolderLinkBeam()
// Holder for a Link Beam

module HolderLinkBeam() {
    height = 15 + getExcess();
    distance = 45 + getTolerance();
    cutoffDepth = 5.4;
    cutoffHeight = 5;
    
    module Holder(xOffset) {
        midOffset = (depth - cutoffDepth) / 2;
        
        translate([xOffset, 0, -getExcess()]) {
            difference() {
                cube([getDividerThickness(), depth, height]);
                translate([-getExcess()/2, midOffset, height - cutoffHeight])
                    cube([getDividerThickness()*2, cutoffDepth, cutoffHeight + getExcess()]);
            }
        }
    }

    Space([width, depth, height]);
    
    xOffsetLeft = (width - distance) / 2 - getDividerThickness();
    Holder(xOffsetLeft);

    xOffsetRight = width - xOffsetLeft - getDividerThickness();
    Holder(xOffsetRight);
}

// Test
color("lightgray")
HolderLinkBeam();