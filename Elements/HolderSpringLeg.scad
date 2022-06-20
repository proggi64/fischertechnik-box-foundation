// Fischertechnik Box Library
// Holder for Spring Leg
// 31307

use <../Base/Constants.scad>
use <../Base/Placement.scad>
use <../Base/Deployment.scad>
use <../ModelBase/Simple.scad>
use <../ModelBase/Complex.scad>

include <../Base/PlacementOptions.scad>

/* [Element Parameters] */
count = 1;
dock = false;

/* [Hidden] */
width = 36;
depth = 8.2;
innerWidth = 18.5;

// getHolderSpringLegSpace(count=1)
// Gets the space the Spring Leg holders need.
// count = Count of spring legs

function getHolderSpringLegSpace(count=1) = [width, depth * count];

// HolderSpringLeg(count=1, dock=false)
// Creates Spring Leg holders.
// count = Count of spring legs
// dock = true for extended holder walls into the bottom wall of the box. Rotate when placing if necessary.

module HolderSpringLeg(count=1, dock=false) {
    Space(getHolderSpringLegSpace(count));

    wallSpace = [innerWidth, depth];
    cutoffDepth = getAxisDiameter() + 0.6;
    holderDepth = depth + getExcess();
    wallVolume = [getDividerThickness(), depth, getFrameAxisHeight()];

    module Holders() {
        difference() {
            CenterHorizontal(innerWidth, space=getHolderSpringLegSpace(count))
                DeploySame(wallSpace, wallVolume)
                    Wall(wallVolume);
            cutoffVolume = [width, cutoffDepth, getAxisDiameter() + getExcess()];
            translate([0,0,getFrameAxisHeight() - getAxisDiameter()])
            CenterVertical(cutoffDepth, space=wallVolume)    
                cube(cutoffVolume);

        }
    }

    for(y = [0 : depth : (count-1) * depth])
        translate([0, y])
            Holders();

    if (dock) {
        dockVolume = [getDividerThickness(), getDividerThickness() + getExcess(), getFrameAxisHeight()];
        translate([0, -getDividerThickness()])
            CenterHorizontal(innerWidth, space=getHolderSpringLegSpace(count))
                DeploySame(wallSpace, dockVolume)
                    Wall(dockVolume);
    }    
}

// Test
color("lightgray")
HolderSpringLeg(count, dock);