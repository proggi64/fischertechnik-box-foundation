// Fischertechnik Box Library
// Holder for Battery Set Baby Cells 4.5V
// 31041

use <../Base/Constants.scad>
use <../Base/Placement.scad>
use <../Base/Boxes.scad>
use <../ModelBase/Simple.scad>

include <../Base/PlacementOptions.scad>

width = getBox190Space().x;
height = 30;
depth = 32;

// Gets the space of a holder for the 70's battery set (180x30x30)

function getHolderBatterySetSpace() = [width, depth + getDividerThickness(), height];

// Holder for the 70's battery set (180x30x30)
// Must be docked to the bottom or rotated by 180 degrees at the top of a box 190.

module HolderBatterySet() {
    
    webVolume = [getBoxWebWidth(), getDividerThickness(), getBoxUsageHeight()];
    webWallVolume = [17, getDividerThickness(), 6];
    
    Space(getHolderBatterySetSpace());

    BoxWeb(LowerLeft, LeftOfCorner, depth, webThickness=getDividerThickness());
    Place(0,depth, elementSpace=webWallVolume, alignX=AlignLeft)
        Wall(webWallVolume);
    
    BoxWeb(LowerRight, RightOfCorner, depth, webThickness=getDividerThickness());
    Place(0,depth, elementSpace=webWallVolume, alignX=AlignRight)
        Wall(webWallVolume);
}

// Cut off for the Box 190 when placing a HolderBattery for the two right connectors
// Use difference() with the Box190 and rotate and align top if aligned to the top

module HolderBatterySetCutoffs() {
    cutOffWidth = 0.8;
    cutOffDepth = 6.0;
    cutOffY = 7.0;
    cutOffDistance = 9.0;
    cutOffVolume = [cutOffWidth, cutOffDepth, getBoxUsageHeight()+1];
    Place(-0.6, cutOffDepth, elementSpace=cutOffVolume, alignX=AlignRight) {
        cube(cutOffVolume);
        translate([0, cutOffDistance + cutOffDepth])
            cube(cutOffVolume);
    }
}

// Test
color("lightgray")
HolderBatterySet();
// Difference to Box190:
color("red")
HolderBatterySetCutoffs();