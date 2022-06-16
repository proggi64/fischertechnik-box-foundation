// Fischertechnik Box Library
// Frame for single 30 mm connecting rod
// 37276

use <../Base/Constants.scad>
use <../Base/Placement.scad>
use <../ModelBase/Complex.scad>
use <FrameAxis30.scad>

/* [Hidden] */
length = 30;
bearingLength = 5;

// getFrameConnectingRod30Space()
// Gets the width (.x) and depth (.y) of the axis frame.

function getFrameConnectingRod30Space() = getFrameAxis30Space();

// FrameConnectingRod30()
// Axis holder for a single 30 mm connecting rod.

module FrameConnectingRod30() {
    ElevatedFramesWithCutoff([length, getAxisDiameter(), getAxisDiameter()], getFrameAxisDepth(), getFrameAxisHeight(), bearingLength);
    CenterHorizontal(getAxisMiddleSupportSpace().x, space = getFrameAxis30Space())
        AxisMiddleSupport();
}

// Test
color("lightgray")
FrameConnectingRod30();