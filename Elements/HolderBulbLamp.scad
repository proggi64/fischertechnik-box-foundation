// Fischertechnik Box Library
// Holder for bulb lamp and lens tip lamp
// 37869, 37875

use <../Base/Constants.scad>
use <../Base/Placement.scad>
use <../ModelBase/Simple.scad>

/* [Hidden] */
width = 11.5;
depth = 5.8;

// getHolderBulbLampSpace()
// Gets the space the bulb lamp holder needs as width and depth (.x and .y as a list)

function getHolderBulbLampSpace() = [width + getTolerance(), depth + 2*getDividerThickness()];

// HolderBulbLamp()
// Holder for a bulb lamp.

module HolderBulbLamp() {
    height = 7.0;
    cutoffDepth = 5.1;
    diameter = depth + 2*getDividerThickness();


    Space(getHolderBulbLampSpace());
    
    difference() {
        Center(getHolderBulbLampSpace())
            Tube(height, innerDiameter=depth, outerDiameter=diameter);
        translate([0, (getHolderBulbLampSpace().y-cutoffDepth)/2])
            cube([getHolderBulbLampSpace().x, cutoffDepth, height + 1]);
    }
}


// Tests
color("lightgray") {
HolderBulbLamp();
}