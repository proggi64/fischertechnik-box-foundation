// Fischertechnik Box Library
// Holder for mirror band
// 31370

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>

width = 120;
depth = 9;
height = 15;

// getHolderMirrorBandSpace()
// Gets the space the nirror band holder needs for width and depth (.x and .y as a list)

function getHolderMirrorBandSpace() = [width, depth, height];

// HolderMirrorBand(xLeft=-1, xRight=-1)
// Holder for the mirror band from the ec3
// xLeft = X-Offset of the first holder from the left edge (-1 for default 40)
// xRight = X-Offset of the second holder from the right edge (-1 for default 40)

module HolderMirrorBand(xLeft=-1, xRight=-1) {
    
    gap = 1;
    radius = 1;
    gapY = (getHolderMirrorBandSpace().y - gap)/2;
    
    Space(getHolderMirrorBandSpace());

    module RoundCorner(yOffset=0, excess=0) {
        translate([0, gapY-radius+2*yOffset, height - radius*1.5])
        rotate([0, 90, 0]) {
            difference() {
                translate([-getExcess()-radius*1.5, -excess])
                    cube([radius+getExcess(), radius+getExcess(), width]);
                translate([-radius/2, yOffset])
                    cylinder(width + 1, radius, $fn=getFragments());
            }
        }
    }

    difference() {
        difference() {
            pos1 = xLeft==-1 ? width / 3 : xLeft;
            pos2 = width - (xRight==-1 ? width / 3 : xRight) - getDividerThickness();
            
            translate([0, 0, -getExcess()]) {
                translate([pos1, 0])
                    cube([getDividerThickness(), getHolderMirrorBandSpace().y, height + getExcess()]);
                translate([pos2, 0])
                    cube([getDividerThickness(), getHolderMirrorBandSpace().y, height + getExcess()]);
            }
            translate([0, gapY])
                cube([width, gap, height+1]);
        }
        
        RoundCorner();
        RoundCorner(radius, getExcess());
    }
    
}

// Tests
color("lightgray") {
HolderMirrorBand();
}