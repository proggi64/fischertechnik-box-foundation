// Fischertechnik Box Library
// Holder for Lifting Joint
// 37282

use <../Base/Constants.scad>
use <../Base/Placement.scad>
use <../ModelBase/Simple.scad>

include <../Base/PlacementOptions.scad>

/* [Hidden] */
width = 39;
depth = 12;
height = 12;
volume = [width, depth, height];

// getHolderLiftingJointSpace()
// gets the space for a holder of a lifting joint

function getHolderLiftingJointSpace() = getFrameOuterVolume(volume);

// HolderLiftingJoint()
// Holder for Lifting Joint

module HolderLiftingJoint() {

    cutoffXOffset = 17;
    cutoffWidth = getHolderLiftingJointSpace().x - cutoffXOffset - getDividerThickness();
    endCutoffWidth = 5;
    endCutoffBase = 6;
    offset = (getHolderLiftingJointSpace().x - cutoffWidth) / 2 - getDividerThickness();
    difference() {
        Frame(volume);
        FrameTopCutoff(volume, cutoffWidth, offset);
        FrameBottomCutoff(volume, cutoffWidth, offset);
        translate([0, 0, endCutoffBase])
            FrameRightCutoff(volume, endCutoffWidth);
    }

    webHeight = 3;
    wallVolume = [getDividerThickness(), getFrameInnerVolume(volume).y + 2*getExcess(), webHeight];
    webDistance = 10;
    translate([getDividerThickness() + webDistance, getDividerThickness() - getExcess()])
        Wall(wallVolume);

    webVolume = [5-getDividerThickness(), 5, 5];
    Place(
        elementSpace = getFrameOuterVolume(webVolume, tolerance=0), 
        alignX=AlignRight, alignY=AlignCenter, 
        boxSpace = getHolderLiftingJointSpace())
        Frame(webVolume, tolerance=0, openLeft=true);
}

// test
color("lightgray")
HolderLiftingJoint();