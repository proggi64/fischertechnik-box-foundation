// Fischertechnik Box Library
// Holder for Building Plate 45x30
// 38259

use <../ModelBase/Complex.scad>

width = 45;

// getHolderBuildingPlate45x30Space(count = 1)
// Gets the width (.x) and depth (.y) space the holder needs.

function getHolderBuildingPlate45x30Space(count = 1) = getHolderBuildingPlateSpace(width, count);

// HolderBuildingPlate45x30(count=1, dock=false)
// Holder for building plates 45x30
// count = Count of building plates (default 1)
// dock = true if the holders are docked to the box wall (default false) 

module HolderBuildingPlate45x30(count = 1, dock = false) {
    HolderBuildingPlate(width, count, firstGapHigher = dock);
}

// Test
color("lightgray")
HolderBuildingPlate45x30(2);