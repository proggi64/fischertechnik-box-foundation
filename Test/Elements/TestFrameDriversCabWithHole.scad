// Fischertechnik Box Foundation
// Elements
// Test FrameDriversCabWithHole

use <../../Base/Placement.scad>
use <../../Elements/FrameDriversCabWithHole.scad>

include <../../Base/PlacementOptions.scad>

FrameDriversCabWithHole();

Place(60, 0, elementSpace=getFrameDriversCabWithHoleSpace(), rotation=Rotate90)
    FrameDriversCabWithHole();
    
Place(110, 0, elementSpace=getFrameDriversCabWithHoleSpace(), rotation=Rotate270)
    FrameDriversCabWithHole();
    
Place(0, 50, elementSpace=getFrameDriversCabWithHoleSpace(), rotation=Rotate180)
    FrameDriversCabWithHole();