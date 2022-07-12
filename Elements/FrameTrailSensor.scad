// Fischertechnik Box Library
// Frame for trail sensor with wires
// 128598

use <../Base/Constants.scad>
use <../Base/Deployment.scad>
use <../ModelBase/Simple.scad>

include <../Base/PlacementOptions.scad>

/* [Hidden] */
width = 15;
depth = 35;
height = 11;
cableWidth = 15;
cableDepth = 75;
cableHeight = 15;

sensorVolume = [width, depth, height];
cableVolume = [cableWidth, cableDepth, cableHeight];
completeVolume = [sensorVolume.x + cableVolume.x, sensorVolume.y + cableVolume.y, max(height, cableHeight)];

// getFrameTrailSensorSpace()
// Gets the space the complete frame for a trail sensor with a box for the wires needs

function getFrameTrailSensorSpace() = getFrameOuterVolume(completeVolume);

// FrameTrailSensor()
// Creates an element for a trail sensor with a box for the wires

module FrameTrailSensor() {

    railWidth = 15;
    module FrameSensor() {
        Frame(sensorVolume);
        FrameRails(sensorVolume, 15, getStudHeight());
    }

    difference() {
        MergeRow(spaces = [getFrameOuterVolume(cableVolume), getFrameOuterVolume(sensorVolume)]) {
            Frame(cableVolume);
            FrameSensor();
        }
        xOffset = getFrameOuterVolume(cableVolume).x - 1.5*getDividerThickness();        
        yOffset = (getFrameOuterVolume(sensorVolume).y - railWidth)/2;
        translate([xOffset, yOffset])
            cube([getDividerThickness()*2, 15, cableHeight + getExcess()]);
    }
}

// Test
color("lightgray")
FrameTrailSensor();