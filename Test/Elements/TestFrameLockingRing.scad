// Fischertechnik Box Foundation
// Elements
// Test FrameLockingRing

use <../../Base/Placement.scad>
use <../../Elements/FrameLockingRing.scad>

include <../../Base/PlacementOptions.scad>

FrameLockingRing();

Place(35, 0, getFrameLockingRingSpace(), rotation=Rotate90)
    FrameLockingRing();

Place(60, 0, getFrameLockingRingSpace(), rotation=Rotate180)
    FrameLockingRing();

Place(95, 0, getFrameLockingRingSpace(), rotation=Rotate270)
    FrameLockingRing();

Place(0, 40)
FrameLockingRing();

Place(35, 40, getFrameLockingRingSpace(2), rotation=Rotate90)
    FrameLockingRing(2);

Place(60, 40, getFrameLockingRingSpace(rows=2), rotation=Rotate180)
    FrameLockingRing(rows=2);

Place(95, 40, getFrameLockingRingSpace(3, 5), rotation=Rotate270)
    FrameLockingRing(3, 5);
