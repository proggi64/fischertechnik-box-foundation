// Fischertechnik Box Foundation
// Elements
// Test AxisFlatHubWithGearZ40

use <../../base/Placement.scad>
use <../../Elements/AxisFlatHubWithGearZ40.scad>

include <../../Base/PlacementOptions.scad>

AxisFlatHubWithGearZ40();

Place(getAxisFlatHubWithGearZ40Space().x+15, 0, elementSpace=getAxisFlatHubWithGearZ40Space(), rotation=Rotate90)
    AxisFlatHubWithGearZ40();