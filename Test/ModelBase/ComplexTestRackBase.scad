// Fischertechnik Box Foundation
// ModelBase Complex
// Test RackBase

use <../../Base/Placement.scad>
use <../../Base/Constants.scad>
use <../../ModelBase/Complex.scad>

include <../../Base/PlacementOptions.scad>

RackBase();

Place(40, 0, getFrameRackSpace(2), rotation=Rotate90)
    RackBase(2);

Place(80, 0, getFrameRackSpace(2, 2), rotation=Rotate90)
    RackBase(2, 2);

Place(120, 0)
    RackBase(1, 4);

Place(160, 0) {
    RackBase(1, 2);    
    Place(0, getFrameRackSpace(1, 2).y - 2*getDividerThickness() - getTolerance())
        RackBase(2, 2);
}