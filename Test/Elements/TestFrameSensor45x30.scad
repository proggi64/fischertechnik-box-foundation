// Fischertechnik Box Foundation
// Elements
// Test FrameSensor45x30

use <../../base/Placement.scad>
use <../../Elements/FrameSensor45x30.scad>

include <../../Base/PlacementOptions.scad>

FrameSensor45x30();

Place(getFrameSensor45x30Space().x+15, 0, elementSpace=getFrameSensor45x30Space(), rotation=Rotate90)
    FrameSensor45x30();

Place(getFrameSensor45x30Space().x+getFrameSensor45x30Space().y+30, 0, elementSpace=getFrameSensor45x30Space(), rotation=Rotate180)
    FrameSensor45x30();