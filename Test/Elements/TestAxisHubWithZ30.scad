// Fischertechnik Box Foundation
// Elements
// Test AxisHubWithZ30

use <../../Base/Placement.scad>
use <../../Elements/AxisHubWithZ30.scad>

include <../../Base/PlacementOptions.scad>

AxisHubWithZ30();

Place(60, 0, getAxisHubWithZ30Space(), rotation=Rotate90)
    AxisHubWithZ30();