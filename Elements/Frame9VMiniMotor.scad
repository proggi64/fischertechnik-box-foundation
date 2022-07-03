// Fischertechnik Box Library
// Frame for 9V mini-motor
// 32293

use <../Base/Constants.scad>
use <../Base/Placement.scad>
use <../ModelBase/Simple.scad>

/* [Hidden] */
width = 22;
depth = 37;
height = 12;
wormLength = 12;

// getFrame9VMiniMotorSpace()
// Gets the space of a frame for 9V mini motor

function getFrame9VMiniMotorSpace() = getFrameOuterVolume([width, depth + wormLength - getDividerThickness(), height]);

// Frame9VMiniMotor()
// frame for a 9V mini motor

module Frame9VMiniMotor() {
    Space(getFrame9VMiniMotorSpace());
    volume = [width, depth, height];

    cutoffWidth = 15;
    sideCutoffWidth = 20;
    offset = 2;
    difference() {
        Frame(volume);
        FrameTopCutoff(volume, cutoffWidth, offset);
        FrameBottomCutoff(volume, cutoffWidth);
        FrameLeftCutoff(volume, sideCutoffWidth);
        FrameRightCutoff(volume, sideCutoffWidth);
    }
    railLength = 3.4;
    railHeight = 5;
    railsVolume = [railLength, volume.y, volume.z];
    FrameRails(railsVolume, 20, 5);
}

// Tests
color("lightgray")
Frame9VMiniMotor();