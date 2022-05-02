// Fischertechnik Box Library
// Holder for Building Plate 30x30
// 38259

use <../ModelBase/Complex.scad>

width = 30;

// getHolderBuildingPlate30x30Space(count = 1)
// Gets the width (.x) and depth (.y) space the holder needs.

function getHolderBuildingPlate30x30Space(count = 1) = getHolderBuildingPlateSpace(width, count);

// HolderBuildingPlate30x30(count=1, dock=false)
// Holder for building plates 30x30
// count = Count of building plates (default 1)
// dock = true if the holders are docked to the box wall (default false) 

module HolderBuildingPlate30x30(count = 1, dock = false) {
    HolderBuildingPlate(width, count, firstGapHigher = dock);
}

// Test
color("lightgray")
HolderBuildingPlate30x30(2);