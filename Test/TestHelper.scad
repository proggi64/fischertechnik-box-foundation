// Fischertechnik Box Foundation
// Test Helper

function getPlacementBaseSpace() = [50,60];
function getCubeSpace() = [10,20];

module PlacementBase() {
    color("green")
    translate([0, 0, -1])
        cube([getPlacementBaseSpace().x, getPlacementBaseSpace().y, 1]);
}

module Cube() {
    translate([0,0,-.01])
    difference() {
        cube([getCubeSpace().x,getCubeSpace().y,1]);
        translate([getCubeSpace().x*0.6, getCubeSpace().y*0.6, -1])
            cube([getCubeSpace().x*0.2,getCubeSpace().y*0.3,3]);
    }
}

module Deploy(distance=30) {
    for( i = [0:1:$children-1])
        translate([i*distance, 0])
            children(i);
}
