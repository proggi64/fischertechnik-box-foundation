// Fischertechnik Box Library
// Cylinder and axis for hub with gear wheel Z30
// 31014 and 36264

use <../Base/Constants.scad>
use <../Base/Placement.scad>
use <../ModelBase/Simple.scad>

use <CylinderHub.scad>

width = 50;
depth = 50;

// getCylinderHubWithZ30()
// Gets the space the cylinder for a hub with a Z30 needs as width and depth (.x and .y as a list)

function getCylinderHubWithZ30Space() = [width, depth];

// CylinderHubWithZ30()
// Standing cylinder and axis for a hub with Z30.
// 31014 and 36264

module CylinderHubWithZ30() {
    Space(getCylinderHubWithZ30Space());
        
    Center(elementSpace=getCylinderHubSpace(), space=getCylinderHubWithZ30Space())
        CylinderHub();
}

// Tests
color("lightgray")
CylinderHubWithZ30();