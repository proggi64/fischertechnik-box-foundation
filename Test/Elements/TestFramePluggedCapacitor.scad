// Fischertechnik Box Foundation
// Elements
// Test FramePluggedCapacitor

use <../../Base/Placement.scad>
use <../../Elements/FramePluggedCapacitor.scad>

include <../../Base/PlacementOptions.scad>

FramePluggedCapacitor();

Place(35, 0, getFramePluggedCapacitorSpace(), rotation=Rotate90)
    FramePluggedCapacitor();
