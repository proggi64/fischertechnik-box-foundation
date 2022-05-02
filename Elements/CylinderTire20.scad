// Fischertechnik Box Library
// Cylinder for Tires 
// 31017

use <../Base/Constants.scad>
use <../Base/Placement.scad>
use <../ModelBase/Simple.scad>

width = 30;
depth = 30;

// getCylinderTire20Space()
// Gets the space the cylinder tite 20 as width and depth (.x and .y as a list)

function getCylinderTire20Space() = [width, depth];

// CylinderTire30()
// Standing cylinder for tire 30 (newer version).
// If count is less than 3 then a thicker cylinder base is 
// generated to elevate the tires.
// count = count of stapled tires (1 to 4)
// 31017

module CylinderTire20(count=3) {
    innerDiameter = 22;
    outerDiameter = 24.8;
    tireWidth = 6;

    minimumInnerHeight = 3 * tireWidth;
    neededHeight = count * tireWidth;
    actualHeight = max(neededHeight, minimumInnerHeight);
    
    innerHeight = actualHeight;
    outerHeight =  actualHeight - neededHeight;

    Space(getCylinderTire20Space());
    
    Center(getCylinderTire20Space())
        LeveledTube(innerHeight, innerDiameter, outerHeight, outerDiameter);
}

// Tests
color("lightgray")
CylinderTire20(2);