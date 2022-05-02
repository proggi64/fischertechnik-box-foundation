// Fischertechnik Box Foundation
// Elements
// Test FrameShortHook

use <../../Base/Placement.scad>
use <../../Elements/FrameShortHook.scad>

include <../../Base/PlacementOptions.scad>

FrameShortHook();

Place(20, 0, getFrameShortHookSpace(), rotation=Rotate90)
    FrameShortHook();
