// Fischertechnik Box Foundation
// Elements
// Test FrameCrankedAxis

use <../../Base/Placement.scad>
use <../../Elements/FrameCrankedAxis.scad>

include <../../Base/PlacementOptions.scad>

FrameCrankedAxis();

Place(0, 40, elementSpace=getFrameCrankedAxisSpace(), rotation=Rotate180)
    FrameCrankedAxis();

Place(140, 0, elementSpace=getFrameCrankedAxisSpace(), rotation=Rotate90)
    FrameCrankedAxis();

Place(180, 0, elementSpace=getFrameCrankedAxisSpace(), rotation=Rotate270)
    FrameCrankedAxis();
