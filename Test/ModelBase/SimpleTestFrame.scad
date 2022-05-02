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