// Fischertechnik Box Library
// Frame for two Connectors 45
// 31330

use <../ModelBase/Complex.scad>

width = 45;
depth = 8.2;
height = 14.8;

// getFrameTwoConnectors45Space()
// Gets the space needed for the frame for two connectors 45.
function getFrameTwoConnectors45Space() = getElevatedFramesWithCutoffSpace([width, depth, height]);

// FrameTwoConnectors45()
// Frame for two connectors 45

module FrameTwoConnectors45() {    
    bearingLength = 6.6;
    loadHeight = 6.4;
    
    ElevatedFramesWithCutoff([width, depth, loadHeight], depth, height, bearingLength);
}

// Test
color("lightgray")
FrameTwoConnectors45();