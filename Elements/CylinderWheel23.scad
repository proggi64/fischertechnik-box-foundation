// Fischertechnik Box Library
// Cylinder for Wheel 23 with Axis 
// 36581, 35586

use <../Base/Constants.scad>
use <../Base/Placement.scad>
use <../ModelBase/Simple.scad>

/* [Hidden] */
width = 25;
depth = 25;

// getCylinderWheel23Space()
// Gets the space the cylinder wheel 23 needs as width and depth (.x and .y as a list)

function getCylinderWheel23Space() = [width, depth];

// CylinderWheel23()
// Standing cylinder for wheel 23 with axis.
// 36581, 35586

module CylinderWheel23() {
    diameter = 15.8;
    height = 19.9;

    Space(getCylinderWheel23Space());
    
    Center(getCylinderWheel23Space())
        Tube(height, innerDiameter=diameter);
}

// Tests
color("lightgray")
CylinderWheel23();