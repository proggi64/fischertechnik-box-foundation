// Fischertechnik Box Library
// Cylinder and axis for hub with gear wheel Z30
// 31014 and 36264

use <../Base/Constants.scad>
use <../Base/Placement.scad>
use <../ModelBase/Simple.scad>

use <AxisHub.scad>

width = 50;
depth = 50;

// getAxisHubWithZ30()
// Gets the space the cylinder for a hub with a Z30 needs as width and depth (.x and .y as a list)

function getAxisHubWithZ30Space() = [width, depth];

// AxisHubWithZ30()
// Standing cylinder and axis for a hub with Z30.
// 31014 and 36264

module AxisHubWithZ30() {
    Space(getAxisHubWithZ30Space());
        
    Center(elementSpace=getAxisHubSpace(), space=getAxisHubWithZ30Space())
        AxisHub();
}

// Tests
color("lightgray")
AxisHubWithZ30();