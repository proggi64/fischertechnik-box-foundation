// Fischertechnik Box Library
// Cylinder and axis for hub 
// 31014

use <../Base/Constants.scad>
use <../Base/Placement.scad>
use <../ModelBase/Simple.scad>

width = 28;
depth = 28;

// getCylinderHub()
// Gets the space the cylinder for a hub needs as width and depth (.x and .y as a list)

function getCylinderHubSpace() = [width, depth];

// CylinderHub()
// Standing cylinder and axis for a hub.
// 31014

module CylinderHub() {
    diameter = 23;
    height = 4;
    axisHeight = 17;

    Space(getCylinderHubSpace());
        
    Center(getCylinderHubSpace()) {
        LeveledAxis(axisHeight, height);
        Tube(height, outerDiameter=diameter);
    }
}

// Tests
color("lightgray")
CylinderHub();