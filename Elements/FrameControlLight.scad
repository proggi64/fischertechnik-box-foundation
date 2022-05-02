// Fischertechnik Box Library
// Frame for Control Light for electronic building block
// 36390

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>

width = 5.5;
depth = 5.5;
height = 12;

// getFrameControlLightSpace()
// Gets the space the frame for a control light needs as width and depth (.x and .y as a list)

function getFrameControlLightSpace() = getFrameOuterVolume([width, depth, height], tolerance=0);

// FrameControlLight()
// The walls of the frame are 12 mm high. 

module FrameControlLight() {
    Frame([width, depth, height], tolerance=0);
}

// Tests
color("lightgray") {
FrameControlLight();
}
