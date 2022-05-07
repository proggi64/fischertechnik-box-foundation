// Fischertechnik Box Library
// Holder for Building Plate 90x30
// 38251

use <../ModelBase/Complex.scad>

width = 90;

// getHolderBuildingPlateSpace90x30(count = 1)
// Gets the width (.x) and depth (.y) space the holder needs.

function getHolderBuildingPlate90x30Space(count = 1) = getHolderBuildingPlateSpace(width, count);

// HolderBuildingPlate90x30(count=1, dock=false)
// Holder for building plates 90x30
// count = Count of building plates (default 1)
// dock = true if the holders are docked to the box wall (default false) 

module HolderBuildingPlate90x30(count = 1, dock = false) {
    HolderBuildingPlate(width, count, firstGapHigher = dock);
}

// Test
color("lightgray")
HolderBuildingPlate90x30();