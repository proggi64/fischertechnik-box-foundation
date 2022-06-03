// Fischertechnik Box Library
// Holder for Building Plate 30x90
// 31503, 38251, 38485

use <../ModelBase/Complex.scad>

/* [Element Parameters] */
count = 1;
dock = false;

/* [Hidden] */
width = 90;

// getHolderBuildingPlateSpace30x90(count = 1)
// Gets the width (.x) and depth (.y) space the holder needs.

function getHolderBuildingPlate30x90Space(count = 1) = getHolderBuildingPlateSpace(width, count);

// HolderBuildingPlate30x90(count=1, dock=false)
// Holder for building plates 30x90
// count = Count of building plates (default 1)
// dock = true if the holders are docked to the box wall (default false) 

module HolderBuildingPlate30x90(count = 1, dock = false) {
    HolderBuildingPlate(width, count, dock);
}

// Test
color("lightgray")
HolderBuildingPlate30x90(count, dock);