// Fischertechnik Box Library
// Holder for Building Plate 30x45 or 15x45
// 38259
// 38242

use <../ModelBase/Complex.scad>

/* [Element Parameters] */
count = 1;
dock = false;

/* [Hidden] */
width = 45;

// getHolderBuildingPlate30x45Space(count = 1)
// Gets the width (.x) and depth (.y) space the holder needs.

function getHolderBuildingPlate30x45Space(count = 1) = getHolderBuildingPlateSpace(width, count);

// HolderBuildingPlate30x45(count=1, dock=false)
// Holder for building plates 45x30 or 45x15
// count = Count of building plates (default 1)
// dock = true if the holders are docked to the box wall (default false) 

module HolderBuildingPlate30x45(count = 1, dock = false) {
    HolderBuildingPlate(width, count, dock);
}

// Test
color("lightgray")
HolderBuildingPlate30x45(count, dock);