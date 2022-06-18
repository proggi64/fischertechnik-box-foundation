// Fischertechnik Box Library
// Frame for a swivel base for mini-motor
// 31070

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>

/* [Hidden] */
width = 30;
depth = 15;
height = 12;
volume = [width, depth, height];

// getFrameSwivelBaseForMiniMotorSpace()
// Gets the space of a frame for a swivel base for mini-motor 

function getFrameSwivelBaseForMiniMotorSpace() = getFrameOuterVolume(volume);

// FrameSwivelBaseForMiniMotor()
// frame for for a swivel base for mini-motor

module FrameSwivelBaseForMiniMotor() {
    Frame([width, depth, height]);

    webHeight = 7;
    webVolume = [getDividerThickness(), getFrameInnerVolume(volume).y + 2*getExcess(), webHeight];

    translate([0, getDividerThickness() - getExcess()]) {
        distance = 4;
        translate([getDividerThickness() + distance, 0])
            Wall(webVolume);
        translate([getFrameSwivelBaseForMiniMotorSpace().x - 2*getDividerThickness() - distance, 0])
            Wall(webVolume);
    }
}

// Tests
color("lightgray")
FrameSwivelBaseForMiniMotor();