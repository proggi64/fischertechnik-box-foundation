// Fischertechnik Box Foundation
// Elements
// Test FramePhotoResistor30

use <../../Base/Placement.scad>
use <../../Elements/FramePhotoResistor30.scad>

include <../../Base/PlacementOptions.scad>

FramePhotoResistor30();

Place(35, 0, getFramePhotoResistor30Space(), rotation=Rotate90)
    FramePhotoResistor30();

Place(60, 0, getFramePhotoResistor30Space(), rotation=Rotate180)
    FramePhotoResistor30();

Place(95, 0, getFramePhotoResistor30Space(), rotation=Rotate270)
    FramePhotoResistor30();
