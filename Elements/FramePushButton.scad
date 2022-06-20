// Fischertechnik Box Library
// Frame for Reverse Switch and Push Button (old)
// 31331, 31332

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>

/* [Hidden] */
width = 32;
depth = 32;
height = 10;
addSwitch = 5;

// getFramePushButtonSpace()
// Gets the space the frame for reverse switch or push button needs as width and depth (.x and .y as a list)

function getFramePushButtonSpace() = getFrameOuterVolume([width, depth + addSwitch, height]);

// FramePushButton()
// The walls of the frame are 13 mm high. 
// The complete frame has a tolerance of addition 1 mm in each direction.

module FramePushButton() {
    cutoffWidth = 15;
    cutoffOffset = 10;
    
    Space(getFramePushButtonSpace());
    
    translate([0, addSwitch, 0])
    difference() {
        Frame([width, depth, height]);
        translate([cutoffOffset, -getDividerThickness()/2, 0])
            cube([cutoffWidth, 2*getDividerThickness(), height + getExcess()]);
    }
}

// Tests
color("lightgray") {
FramePushButton();
}
