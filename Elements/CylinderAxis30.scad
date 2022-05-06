// Fischertechnik Box Library
// Cylinder for standing 30 mm axis
// 31034

use <../Base/Constants.scad>
use <../Base/Placement.scad>
use <../ModelBase/Simple.scad>
use <../ModelBase/Complex.scad>

width = 12;
depth = 12;
height = 6;

// getCylinderAxis30Space()
// Gets the space the cylinder for a 30 mm axis needs

function getCylinderAxis30Space() = [width, depth, height];

// CylinderAxis30()
// Standing cylinder for axis 30
// 31034

module CylinderAxis30() {
    Space(getCylinderAxis30Space());
    
    Center(getCylinderAxis30Space())
        Tube(height, innerDiameter=getFrameAxisDepth());
}

// Tests
color("lightgray")
CylinderAxis30();