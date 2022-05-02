// Fischertechnik Box Library
// Axis for hub
// 31014

use <../Base/Constants.scad>
use <../Base/Placement.scad>
use <../ModelBase/Simple.scad>

width = 30;
depth = 30;

// getAxisHubSpace()
// Gets the space the axis hub needs as width and depth (.x and .y as a list)

function getAxisHubSpace() = [width, depth];

// AxisHub()
// Axis to stick a standard hub on it. This needs
// a 30x30 mm rectangle in the box. To support the placement
// the axis has a thin and sinked 30x30 mm base plate.

module AxisHub() {
    axisHeight = 15;
    tubeHeight = 5;
    tubeDiameter = 20;

    LeveledAxisWithSpace(axisHeight, tubeHeight, getAxisHubSpace());
    
    Center(getAxisHubSpace())
        Tube(tubeHeight, tubeDiameter);
}

// Tests
color("lightgray") {
AxisHub();
}