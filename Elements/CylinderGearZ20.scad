// Fischertechnik Box Library
// Cylinder for Gear Z20
// 31021

use <../Base/Constants.scad>
use <../Base/Placement.scad>
use <../ModelBase/Simple.scad>

depth = 33.8;
width = 33.8;
height = 14.8;
levelHeight = 11.5;

function getCylinderGearZ20Height() = height;
function getCylinderGearZ20LevelHeight() = levelHeight;

// getCylinderGearZ20Space()
// Gets the space the cylinder gear needs as width and depth (.x and .y as a list)

function getCylinderGearZ20Space() = [width, depth];

// CylinderGear()
// Standing cylinder for gear wheel Z20

module CylinderGearZ20() {
    diameter = 19.5;
    levelDiameter = 21;

    Space(getCylinderGearZ20Space());
        
    Center(getCylinderGearZ20Space())
        LeveledTube(getCylinderGearZ20Height(), diameter, getCylinderGearZ20LevelHeight(), levelDiameter);
}

// Tests
color("lightgray")
CylinderGearZ20();