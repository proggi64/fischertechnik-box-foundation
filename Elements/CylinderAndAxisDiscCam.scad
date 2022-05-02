// Cylinder and Axis for Disc-Cam
// 31038

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>
use <../ModelBase/Complex.scad>

use <CylinderGear.scad>

width = 57;
depth = 42;

// getCylinderAndAxisDiscCamSpace()
// Gets the space the cylinder and axis disc cam needs as width and depth (.x and .y as a list)

function getCylinderAndAxisDiscCamSpace() = [width, depth];

// CylinderAndAxisDiscCam()
// Standing cylinder with axis for disc-cam 31038

module CylinderAndAxisDiscCam() {
   
    translate([0, 0, -getExcess()]) {
        cube([getCylinderAndAxisDiscCamSpace().x, getCylinderAndAxisDiscCamSpace().y, getExcess()]);
    }

    xOffset = (getCylinderAndAxisDiscCamSpace().y - getCylinderGearSpace().x)/2;
    yOffset = (getCylinderAndAxisDiscCamSpace().y - getCylinderGearSpace().y)/2;

    translate([xOffset, yOffset, 0])
        CylinderGear();
    
    xAxisOffset = 43;
    yAxisOffset = getCylinderAndAxisDiscCamSpace().y / 2;
    translate([xAxisOffset, yAxisOffset])
        LeveledAxis(getCylinderGearHeight(), getCylinderGearLevelHeight());
}

// Tests
color("lightgray")
CylinderAndAxisDiscCam();