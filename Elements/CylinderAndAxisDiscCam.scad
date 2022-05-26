// Cylinder and Axis for Disc-Cam
// 31038

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>
use <../ModelBase/Complex.scad>

use <CylinderGearZ20.scad>

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

    xOffset = (getCylinderAndAxisDiscCamSpace().y - getCylinderGearZ20Space().x)/2;
    yOffset = (getCylinderAndAxisDiscCamSpace().y - getCylinderGearZ20Space().y)/2;

    translate([xOffset, yOffset, 0])
        CylinderGearZ20();
    
    // For 3D printing:
    correctedDiameter = 3.7;
    
    xAxisOffset = 43.5;
    yAxisOffset = getCylinderAndAxisDiscCamSpace().y / 2;
    translate([xAxisOffset, yAxisOffset])
        LeveledAxis(getCylinderGearZ20Height(), getCylinderGearZ20LevelHeight(), diameter = correctedDiameter);    
}

// Tests
color("lightgray")
CylinderAndAxisDiscCam();