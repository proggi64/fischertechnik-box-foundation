// Fischertechnik Box Foundation
// ModelBase
// Test Frame

use <../../Base/Constants.scad>
use <../../ModelBase/Simple.scad>

// With tolerance
translate([-getDividerThickness(), -getDividerThickness(), 0])
    Frame([10,10,10]);

// No tolerance
translate([20-getDividerThickness(), -getDividerThickness(), 0])
    Frame([10,10,10], 0);
    
// No tolerance
translate([40-getDividerThickness(), -getDividerThickness(), 0])
    Frame([45,30,15], 0);
    
// With tolerance
translate([100-getDividerThickness(), -getDividerThickness(), 0])
    Frame([45,30,15]);

// One Wall deleted    
translate([-getDividerThickness(), 40-getDividerThickness(), 0])
    Frame([10,10,10], openLeft=true);

translate([20-getDividerThickness(), 40-getDividerThickness(), 0])
    Frame([10,10,10], openRight=true);

translate([40-getDividerThickness(), 40-getDividerThickness(), 0])
    Frame([10,10,10], openTop=true);

translate([60-getDividerThickness(), 40-getDividerThickness(), 0])
    Frame([10,10,10], openBottom=true);
    
// Multiple walls deleted
translate([-getDividerThickness(), 60-getDividerThickness(), 0])
    Frame([10,10,10], openLeft=true, openTop=true);

translate([20-getDividerThickness(), 60-getDividerThickness(), 0])
    Frame([10,10,10], openRight=true, openBottom=true);

translate([40-getDividerThickness(), 60-getDividerThickness(), 0])
    Frame([10,10,10], openLeft=true, openRight=true);

translate([60-getDividerThickness(), 60-getDividerThickness(), 0])
    Frame([10,10,10], openTop=true, openBottom=true);
