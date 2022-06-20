// Fischertechnik Box Library
// Frame for two Strut 30
// 31764, 36309, 36912, 38537, 38538, 160545

use <../ModelBase/Complex.scad>

/* [Hidden] */
width = 38.9;
depth = 5.8;
height = 14.8;

// getFrameTwoStrut30Space()
// Gets the space needed for the frame for two struts.
function getFrameTwoStrut30Space() = getElevatedFramesWithCutoffSpace([width, depth, height]);

// FrameTwoConnectors45()
// Frame for two struts 30

module FrameTwoStrut30() {    
    bearingLength = 8.8;
    loadHeight = 8.0;
    
    ElevatedFramesWithCutoff([width, depth, loadHeight], depth, height, bearingLength);
}

// Test
color("lightgray")
FrameTwoStrut30();