// Fischertechnik Box Library
// Frame for Light Resistor 30
// 31361

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>
use <FrameBlockWithPin.scad>

width = 15;
depth = 15;
height = 15;

// getFramePhotoResistor30Space()
// Gets the space the frame for photo resistor 30 needs as width (.x and .y as a list)

function getFramePhotoResistor30Space() = getFrameOuterVolume([width, depth, height]);

// FramePhotoResistor30()
// Frame for photo resistor 30

module FramePhotoResistor30() {
    gapWidth = 6;
    
    difference() {
        FrameBlockWithPin(height=height);
        translate([-getDividerThickness()/2,(getFramePhotoResistor30Space().y-gapWidth)/2])
            cube([getDividerThickness()*2, gapWidth, height + 1]);
    }
}

// Test
color("lightgray") {
    FramePhotoResistor30();
}