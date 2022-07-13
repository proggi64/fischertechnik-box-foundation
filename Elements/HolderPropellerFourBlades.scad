// Fischertechnik Box Library
// Holder for four blade propeller
// 36337

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>

/* [Hidden] */
width = 55;
depth = 55;
height = 15;

// getHolderPropellerFourBladesSpace()
// gets the space for a four blade propeller when placed as an "X".

function getHolderPropellerFourBladesSpace() = [width, depth, height];

// HolderPropellerFourBlades()
// Holder for a four blade propeller when placed as an "X".

module HolderPropellerFourBlades() {
    propellerThickness = 5;
    diameter = getPropellerAxisDiameter() - getPropellerAxisTolerance();
    LeveledAxisWithSpace(
        height, 
        levelHeight=propellerThickness, 
        space=getHolderPropellerFourBladesSpace(),
        diameter=diameter,
        baseDiameter=diameter + 2);
    volume = [10, getDividerThickness()*2, height];
    x = (getHolderPropellerFourBladesSpace().x - volume.x) / 2;
    y = getHolderPropellerFourBladesSpace().y/ 2 - volume.y - 11;
    translate([x, y])
        Wall(volume);
}

// Test
color("lightgray")
HolderPropellerFourBlades();