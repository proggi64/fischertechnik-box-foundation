// Fischertechnik Box Library
// Axis for propeller tip
// 37681

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>

/* [Hidden] */
space = 11.6;

// getAxisPropellerTipSpace()
// Gets the space the axis for a propeller tip needs as width and depth (.x and .y as a list)

function getAxisPropellerTipSpace() = [space, space];

// AxisPropellerTip()
// Standing axis for a propeller tip 37681

module AxisPropellerTip() {
    height = 11;
    AxisWithSpace(height, getAxisPropellerTipSpace());
}

// Tests
color("lightgray")
AxisPropellerTip();