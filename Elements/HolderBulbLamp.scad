// Fischertechnik Box Library
// Holder for bulb lamp and lens tip lamp
// 37869, 37875

use <../Base/Constants.scad>
use <../Base/Placement.scad>
use <../ModelBase/Simple.scad>

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
    $fn = getFragments();
    diameter = depth + 2*getDividerThickness();

    module BulbCylinder() {
        Center(getHolderBulbLampSpace())
        {        
            difference() {
                cylinder(h = height + getExcess(), d = depth + 2*getDividerThickness());
                cylinder(h = height + 2*getExcess(), d = depth);
            }
        }
    }

    Space(getHolderBulbLampSpace());
    
    difference() {
        translate([0, 0, -getExcess()])
            BulbCylinder();
        translate([0, (getHolderBulbLampSpace().y-cutoffDepth)/2])
            cube([getHolderBulbLampSpace().x, cutoffDepth, height + 1]);
    }
}


// Tests
color("lightgray") {
HolderBulbLamp();
}