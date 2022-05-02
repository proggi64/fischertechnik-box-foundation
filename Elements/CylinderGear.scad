// Fischertechnik Box Library
// Cylinder for Gear or Tire
// 31021

use <../Base/Constants.scad>
use <../Base/Placement.scad>
use <../ModelBase/Simple.scad>

depth = 33.8;
width = 33.8;
height = 14.8;
levelHeight = 11.5;

function getCylinderGearHeight() = height;
function getCylinderGearLevelHeight() = levelHeight;

// getCylinderGearSpace()
// Gets the space the cylinder gear needs as width and depth (.x and .y as a list)

function getCylinderGearSpace() = [width, depth];

// CylinderGear()
// Standing cylinder for gear wheel Z20 or disc-cam

module CylinderGear() {
    diameter = 19.5;
    levelDiameter = 21;

    Space(getCylinderGearSpace());
        
    Center(getCylinderGearSpace())
        LeveledTube(getCylinderGearHeight(), diameter, getCylinderGearLevelHeight(), levelDiameter);
}

// Tests
color("lightgray")
CylinderGear();