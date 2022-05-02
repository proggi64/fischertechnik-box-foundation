// Fischertechnik Box Library
// Frame for two Connectors 30
// 31061

use <../ModelBase/Complex.scad>

width = 30;
depth = 8.2;
height = 14.8;

// getFrameTwoConnectors30Space()
// Gets the space needed for the frame for two struts.
function getFrameTwoConnectors30Space() = getElevatedFramesWithCutoffSpace([width, depth, height]);

// FrameTwoConnectors30()
// Frame for two connectors 30

module FrameTwoConnectors30() {    
    bearingLength = 6.6;
    loadHeight = 6.4;
    
    ElevatedFramesWithCutoff([width, depth, loadHeight], depth, height, bearingLength);
}

// Test
color("lightgray")
FrameTwoConnectors30();