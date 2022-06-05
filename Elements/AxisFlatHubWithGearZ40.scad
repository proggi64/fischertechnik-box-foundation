// Fischertechnik Box Library
// Axis for gear wheel Z40 with flat hub
// 31022, 31015

use <../ModelBase/Simple.scad>
use <../Base/Constants.scad>

/* [Hidden] */
width = 63;
depth = 63;
height = 12;

// getAxisFlatHubWithGearZ40Space()
// Gets the space of an axis for a gear wheel with Z40

function getAxisFlatHubWithGearZ40Space() = [width, depth, height];

// AxisFlatHubWithGearZ40()
// Axis for gear Z40 with flat hub

module AxisFlatHubWithGearZ40() {
    AxisWithSpace(height, getAxisFlatHubWithGearZ40Space());
}

// Test
color("lightgray")
AxisFlatHubWithGearZ40();