// Cylinder and Axis for Disc-Cam plus Axis for CogWheel
// 31038 plus 31047 or 31051

use <AxisCogWheel.scad>
use <CylinderAndAxisDiscCam.scad>

// getComboDiscCamPlusCogWheel()
// Gets the space the combo of disc cam plus cog wheel needs as width and depth (.x and .y as a list)

function getComboDiscCamPlusCogWheelSpace() = [getCylinderAndAxisDiscCamSpace().x, getCylinderAndAxisDiscCamSpace().y];

// ComboDiscCamPlusCogWheel()
// Standing cylinder with axis for disc-cam 31038
// plus cog wheel axis centered in the cylinder

module ComboDiscCamPlusCogWheel() {
    CylinderAndAxisDiscCam();
    offsetX = (getCylinderAndAxisDiscCamSpace().y - getAxisCogWheelSpace().x) / 2;
    offsetY = (getCylinderAndAxisDiscCamSpace().y - getAxisCogWheelSpace().y) / 2;
    translate([offsetX, offsetY, 0])
        AxisCogWheel();
}

// Tests
color("lightgray") {
    ComboDiscCamPlusCogWheel();
}