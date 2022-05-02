// Fischertechnik Box Library
// Frame for Electronic Block Connector
// 36380

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>

width = 18.5;
depth = 3.3;
height = 5;
tolerance = 0.4;

// getFrameElectronicBlockConnectorSpace()
// Gets the space the frame for electronic block conector needs as width and depth (.x and .y as a list)

function getFrameElectronicBlockConnectorSpace() = 
    getFrameOuterVolume([width, depth, height], tolerance = tolerance);

// FrameElectronicBlockConnector()
// Frame for electronic block connector

module FrameElectronicBlockConnector() {    
    webThickness = 0.6;
    webDepth = 0.1;
    webDistance = 4.3;
    innerVolume = getFrameInnerVolume([width, depth, height], tolerance = tolerance);
    
    module InnerFrame() {
        Frame([width, depth, height], tolerance = tolerance);
        
        translate([0, getDividerThickness()-getExcess(), -getExcess()]) {
            translate([getDividerThickness()+webDistance, 0])
                cube([webThickness, innerVolume.y+2*getExcess(), innerVolume.z+getExcess()]);
            translate([getDividerThickness()+width-webDistance-webThickness, 0])
                cube([webThickness, innerVolume.y+2*getExcess(), innerVolume.z+getExcess()]);
        }
    }

    difference() {
        InnerFrame();

        cutoffWidth = innerVolume.x;
        cutoffDepth = innerVolume.y - 2*webDepth;
        
        translate([getDividerThickness(), getDividerThickness() + webDepth, 0])
            cube([cutoffWidth, cutoffDepth, height+1]);
    }
}

// Test
color("lightgray") {
    FrameElectronicBlockConnector();
}