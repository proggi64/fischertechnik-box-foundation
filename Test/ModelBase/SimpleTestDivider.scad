// Fischertechnik Box Foundation
// ModelBase
// Test Divider

use <../../Base/Boxes.scad>
use <../../ModelBase/Simple.scad>

include <../..//Base/PlacementOptions.scad>

#Box190();

Divider(15, align=AlignTop);
Divider(getBox190Space().x/2);

translate([200,0]) {
    #Box130();

    Divider(15, align=AlignTop, boxSpace=getBox130Space());
    Divider(getBox130Space().x/2, boxSpace=getBox130Space());
}