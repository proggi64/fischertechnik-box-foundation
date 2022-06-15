// Fischertechnik Box Library
// Frame for mini-motor
// 31062, 137096

use <../Base/Constants.scad>
use <../Base/Placement.scad>
use <../ModelBase/Simple.scad>

include <../Base/PlacementOptions.scad>

/* [Hidden] */
width = 30;
depth = 20;
height = 6;
pinDepth = 3.5;
wormDepth = 12;

volume = [width, depth, height];

// getFrameMiniMotorSpace()
// Gets the space for a mini motor including the pin and the worm

function getFrameMiniMotorSpace() = getFrameOuterVolume([width + pinDepth + wormDepth, depth, height]);

// FrameMiniMotor()
// Frame for mini motor

module FrameMiniMotor() {
    Space(getFrameMiniMotorSpace());
    translate([wormDepth, 0]) {
        difference() {
            Frame([width, depth, height]);
            cutoff = 14;
            cutoffVolume = [2*getDividerThickness(), cutoff, height + getExcess()];
            translate([-getDividerThickness()/2, (getFrameOuterVolume(volume).y - cutoff)/2])
                cube(cutoffVolume);
            translate([getFrameOuterVolume(volume).x - getDividerThickness() - getDividerThickness()/2, (getFrameOuterVolume(volume).y - cutoff)/2])
                cube(cutoffVolume);
        }
    }
}

// test
color("lightgray")
FrameMiniMotor();