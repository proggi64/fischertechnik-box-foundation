// Fischertechnik Box Library
// Frame for Control Light for electronic building block
// 36390

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>

/* [Hidden] */
width = 5;
depth = 5;
height = 12;
tolerance = 0.4;

// getFrameControlLightSpace()
// Gets the space the frame for a control light needs as width and depth (.x and .y as a list)

function getFrameControlLightSpace() = getFrameOuterVolume([width, depth, height], tolerance=tolerance);

// FrameControlLight()
// The walls of the frame are 12 mm high. 

module FrameControlLight() {
    Frame([width, depth, height], tolerance=tolerance);
}

// Tests
color("lightgray") {
FrameControlLight();
}
