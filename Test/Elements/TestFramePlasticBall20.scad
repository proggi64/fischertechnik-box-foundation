// Fischertechnik Box Foundation
// Elements
// Test FramePlasticBall20

use <../../base/Placement.scad>
use <../../Elements/FramePlasticBall20.scad>

include <../../Base/PlacementOptions.scad>

FramePlasticBall20();

Place(getFramePlasticBall20Space().x+15, 0, elementSpace=getFramePlasticBall20Space(), rotation=Rotate90)
    FramePlasticBall20();