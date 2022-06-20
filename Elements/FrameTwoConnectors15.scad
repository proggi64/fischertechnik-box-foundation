// Fischertechnik Box Library
// Frame for two Connectors 15
// 31060

use <..\ModelBase\Simple.scad>

/* [Hidden] */
width = 8.2;
depth = 6.4;
height = 10;

// getFrameTwoConnectors30Space()
// Gets the space needed for the frame for two struts.
function getFrameTwoConnectors15Space() = getFrameOuterVolume([width, depth, height]);

// FrameTwoConnectors15()
// Frame for two connectors 15 standing
// 31060

module FrameTwoConnectors15() {
    Frame([width, depth, height]);
}

// test
color("lightgray")
FrameTwoConnectors15();