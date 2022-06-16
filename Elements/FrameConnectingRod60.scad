// Fischertechnik Box Library
// Frame for single 60 mm connecting rod
// 37283

use <../Base/Constants.scad>
use <../Base/Placement.scad>
use <../ModelBase/Complex.scad>
use <FrameAxis60.scad>

/* [Hidden] */
length = 60;
bearingLength = 15;

// getFrameConnectingRod60Space()
// Gets the width (.x) and depth (.y) of the axis frame.

function getFrameConnectingRod30Space() = getFrameAxis60Space();

// FrameConnectingRod60()
// Axis holder for a single 60 mm connecting rod.

module FrameConnectingRod60() {
    ElevatedFramesWithCutoff([length, getAxisDiameter(), getAxisDiameter()], getFrameAxisDepth(), getFrameAxisHeight(), bearingLength);
}

// Test
color("lightgray")
FrameConnectingRod60();