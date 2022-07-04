// Fischertechnik Box Library
// Holder for Building Plate 30x45
// 38464

use <../ModelBase/Complex.scad>

/* [Element Parameters] */
count = 1;
dock = false;

/* [Hidden] */
width = 60;

// getHolderBuildingPlate15x60Space(count = 1)
// Gets the width (.x) and depth (.y) space the holder needs.

function getHolderBuildingPlate15x60Space(count = 1) = getHolderBuildingPlateSpace(width, count);

// HolderBuildingPlate15x60(count=1, dock=false)
// Holder for building plates 15x60
// count = Count of building plates (default 1)
// dock = true if the holders are docked to the box wall (default false) 

module HolderBuildingPlate15x60(count = 1, dock = false) {
    HolderBuildingPlate(width, count, dock);
}

// Test
color("lightgray")
HolderBuildingPlate15x60(count, dock);