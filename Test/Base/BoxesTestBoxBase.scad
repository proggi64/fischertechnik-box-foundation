// Fischertechnik Box Foundation
// Stackable boxes
// Test BoxBase

use <../../Base/Constants.scad>
use <../../Base/Boxes.scad>

BoxBase(190, 130);
    translate([5,-5,0])
        #cube([15, 15, getBoxUsageHeight()]);
    translate([25,-5,0])
        #cube([15, 15, getBoxInnerHeight()]);
    translate([45,-5, -15])
        #cube([15, 15, 15]);
    translate([-getBoxWallThickness()-1.5/2, 60, 35])
        #cube([190, 15, 15]);
    translate([60, -getBoxWallThickness()-1.5/2, 35])
        #cube([15, 130, 15]);

translate([200, 0]) {
BoxBase(130, 95);
    translate([5,-5,0])
        #cube([15, 15, getBoxUsageHeight()]);
    translate([25,-5,0])
        #cube([15, 15, getBoxInnerHeight()]);
    translate([45,-5, -15])
        #cube([15, 15, 15]);
    translate([-getBoxWallThickness()-1.5/2, 35, 35])
        #cube([130, 15, 15]);
    translate([35, -getBoxWallThickness()-1.5/2, 35])
        #cube([15, 95, 15]);
}

translate([340, 0]) {
BoxBase(130, 95, 55);
}

translate([480, 0]) {
BoxBase(130, 95, 25);
}