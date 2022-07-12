// Fischertechnik Box Library
// Frame for Environmental and Gesture Sensor
// 167358, 186705

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>

/* [Hidden] */
width = 45;
depth = 30;
height = 6;
volume = [width, depth, height];
extraVolume = [width, depth - getDividerThickness() + getStudHeight(), height];

// getFrameSensor45x30Space()
// Gets the space a sensor with 45x30x15 mm needs

function getFrameSensor45x30Space() = getFrameOuterVolume(extraVolume);

// FrameSensor45x30()
// Sensor with 45x30x15 mm

module FrameSensor45x30() {
    Space(getFrameSensor45x30Space());
    difference() {
        Frame(volume);
        FrameTopCutoff(volume, 10);
    }
}

// Tests
color("lightgray") {
    FrameSensor45x30();
}
