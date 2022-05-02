// Fischertechnik Box Foundation
// ModelBase
// Test DockableFrame

use <../../Base/Constants.scad>
use <../../Base/Placement.scad>
use <../../Base/Boxes.scad>

include <../../Base/PlacementOptions.scad>

use <../../ModelBase/Simple.scad>

// Identical results to Frame for the first four elements:

// With tolerance
translate([-getDividerThickness(), -getDividerThickness(), 0])
    DockableFrame([10,10,10]);

// No tolerance
translate([20-getDividerThickness(), -getDividerThickness(), 0])
    DockableFrame([10,10,10], tolerance=0);
    
// No tolerance
translate([40-getDividerThickness(), -getDividerThickness(), 0])
    DockableFrame([45,30,15], tolerance=0);
    
// With tolerance
translate([100-getDividerThickness(), -getDividerThickness(), 0])
    DockableFrame([45,30,15]);
    

// Open frames

translate([0, 50]) {
    
DockableFrame([10,10,10], wallTop=false);
    
translate([20, 0])
    DockableFrame([10,10,10], wallLeft=false);
    
translate([40, 0])
    DockableFrame([45,30,15], wallBottom=false, wallRight=false);

translate([100, 0])
    DockableFrame([45,30,15], wallBottom=false, wallRight=false, wallLeft=false);
}

translate([180, 0]) {
    #Box190();
    Place()
        DockableFrame([45,30,15], wallBottom=false, wallLeft=false);

    volume = [60,30,10];
    Place(elementSpace=getFrameOuterVolume(volume), alignY=AlignTop, alignX=AlignCenter)
        DockableFrame(volume, wallTop=false);
}