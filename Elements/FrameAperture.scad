// Fischertechnik Box Library
// Frame for Pinhole, Slit Aperture, and Cross Aperture
// 31371, 31372, 31373 

use <../ModelBase/Simple.scad>
use <../ModelBase/Complex.scad>

width = 33.5;
depth = 30;
height = 11;

// getFrameApertureSpace()
// Gets the outer space the aperture frame needs.

function getFrameApertureSpace() = getFrameOuterVolume([width, depth, height]);

// FrameAperture()
// Frame for 30 mm flat slit or cross aperture.

module FrameAperture() {
    FrameSpecialFlat([width, depth, height]);
}

// Tests
color("lightgray") {
FrameAperture();
}
