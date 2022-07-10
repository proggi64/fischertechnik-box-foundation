// Fischertechnik Box Foundation
// ModelBase
// Test AlignedFrame

use <../../Base/Constants.scad>
use <../../Base/Placement.scad>
use <../../Base/Boxes.scad>

include <../../Base/PlacementOptions.scad>

use <../../ModelBase/Simple.scad>

// Identical results to Frame for the first four elements:

// With tolerance
translate([-getDividerThickness(), -getDividerThickness(), 0])
    AlignedFrame([10,10,10]);

// No tolerance
translate([20-getDividerThickness(), -getDividerThickness(), 0])
    AlignedFrame([10,10,10], tolerance=0);
    
// No tolerance
translate([40-getDividerThickness(), -getDividerThickness(), 0])
    AlignedFrame([45,30,15], tolerance=0);
    
// With tolerance
translate([100-getDividerThickness(), -getDividerThickness(), 0])
    AlignedFrame([45,30,15]);
    

// Open frames

translate([0, 50]) {
    
AlignedFrame([10,10,10], alignY=AlignTop);
    
translate([20, 0])
    AlignedFrame([10,10,10], alignX=AlignLeft);
    
translate([40, 0])
    AlignedFrame([45,30,15], alignY=AlignBottom, alignX=AlignRight);

translate([100, 0])
    AlignedFrame([45,30,15], alignY=AlignTop, alignX=AlignLeft);
}

translate([180, 0]) {
    #Box190();
    Place()
        AlignedFrame([45,30,15], alignY=AlignBottom, alignX=AlignLeft);

    volume = [60,30,10];
    Place(elementSpace=getFrameOuterVolume(volume), alignY=AlignTop, alignX=AlignCenter)
        AlignedFrame(volume, alignY=AlignTop);
}